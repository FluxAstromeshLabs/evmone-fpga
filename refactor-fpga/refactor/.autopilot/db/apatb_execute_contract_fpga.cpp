#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_msg "../tv/cdatafile/c.execute_contract_fpga.autotvin_msg.dat"
#define AUTOTB_TVOUT_msg "../tv/cdatafile/c.execute_contract_fpga.autotvout_msg.dat"
// wrapc file define:
#define AUTOTB_TVIN_code "../tv/cdatafile/c.execute_contract_fpga.autotvin_code.dat"
#define AUTOTB_TVOUT_code "../tv/cdatafile/c.execute_contract_fpga.autotvout_code.dat"
// wrapc file define:
#define AUTOTB_TVIN_code_size "../tv/cdatafile/c.execute_contract_fpga.autotvin_code_size.dat"
#define AUTOTB_TVOUT_code_size "../tv/cdatafile/c.execute_contract_fpga.autotvout_code_size.dat"
// wrapc file define:
#define AUTOTB_TVIN_state "../tv/cdatafile/c.execute_contract_fpga.autotvin_state.dat"
#define AUTOTB_TVOUT_state "../tv/cdatafile/c.execute_contract_fpga.autotvout_state.dat"
// wrapc file define:
#define AUTOTB_TVIN_storage_stream_in_V "../tv/cdatafile/c.execute_contract_fpga.autotvin_storage_stream_in_V.dat"
#define AUTOTB_TVOUT_storage_stream_in_V "../tv/cdatafile/c.execute_contract_fpga.autotvout_storage_stream_in_V.dat"
#define WRAPC_STREAM_SIZE_IN_storage_stream_in_V "../tv/stream_size/stream_size_in_storage_stream_in_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_storage_stream_in_V "../tv/stream_size/stream_ingress_status_storage_stream_in_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_storage_stream_out_V "../tv/cdatafile/c.execute_contract_fpga.autotvin_storage_stream_out_V.dat"
#define AUTOTB_TVOUT_storage_stream_out_V "../tv/cdatafile/c.execute_contract_fpga.autotvout_storage_stream_out_V.dat"
#define WRAPC_STREAM_SIZE_OUT_storage_stream_out_V "../tv/stream_size/stream_size_out_storage_stream_out_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_storage_stream_out_V "../tv/stream_size/stream_egress_status_storage_stream_out_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_result "../tv/cdatafile/c.execute_contract_fpga.autotvin_result.dat"
#define AUTOTB_TVOUT_result "../tv/cdatafile/c.execute_contract_fpga.autotvout_result.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_msg "../tv/rtldatafile/rtl.execute_contract_fpga.autotvout_msg.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_code "../tv/rtldatafile/rtl.execute_contract_fpga.autotvout_code.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_code_size "../tv/rtldatafile/rtl.execute_contract_fpga.autotvout_code_size.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_state "../tv/rtldatafile/rtl.execute_contract_fpga.autotvout_state.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_storage_stream_in_V "../tv/rtldatafile/rtl.execute_contract_fpga.autotvout_storage_stream_in_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_storage_stream_out_V "../tv/rtldatafile/rtl.execute_contract_fpga.autotvout_storage_stream_out_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_result "../tv/rtldatafile/rtl.execute_contract_fpga.autotvout_result.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  msg_depth = 0;
  code_depth = 0;
  code_size_depth = 0;
  state_depth = 0;
  storage_stream_in_V_depth = 0;
  storage_stream_out_V_depth = 0;
  result_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{msg " << msg_depth << "}\n";
  total_list << "{code " << code_depth << "}\n";
  total_list << "{code_size " << code_size_depth << "}\n";
  total_list << "{state " << state_depth << "}\n";
  total_list << "{storage_stream_in_V " << storage_stream_in_V_depth << "}\n";
  total_list << "{storage_stream_out_V " << storage_stream_out_V_depth << "}\n";
  total_list << "{result " << result_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int msg_depth;
    int code_depth;
    int code_size_depth;
    int state_depth;
    int storage_stream_in_V_depth;
    int storage_stream_out_V_depth;
    int result_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s20__ { char data[32]; };
struct __cosim_s14__ { char data[20]; };
extern "C" void execute_contract_fpga_hw_stub_wrapper(volatile void *, volatile void *, long long, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_execute_contract_fpga_hw(volatile void * __xlx_apatb_param_msg, volatile void * __xlx_apatb_param_code, long long __xlx_apatb_param_code_size, volatile void * __xlx_apatb_param_state, volatile void * __xlx_apatb_param_storage_stream_in, volatile void * __xlx_apatb_param_storage_stream_out, volatile void * __xlx_apatb_param_result) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_state);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<256> > state_pc_buffer(8986);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "state");
  
            // push token into output port buffer
            if (AESL_token != "") {
              state_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 8986; j < e; j += 1, ++i) {((long long*)__xlx_apatb_param_state)[j*4+0] = state_pc_buffer[i].range(63,0).to_int64();
((long long*)__xlx_apatb_param_state)[j*4+1] = state_pc_buffer[i].range(127,64).to_int64();
((long long*)__xlx_apatb_param_state)[j*4+2] = state_pc_buffer[i].range(191,128).to_int64();
((long long*)__xlx_apatb_param_state)[j*4+3] = state_pc_buffer[i].range(255,192).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_storage_stream_in_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_storage_stream_in_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_storage_stream_in_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_storage_stream_in_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_in)->read();
long __xlx_apatb_param_storage_stream_out_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_storage_stream_out_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_storage_stream_out_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_storage_stream_out_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<256> > storage_stream_out_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "storage_stream_out_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              storage_stream_out_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s20__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*4+0] = storage_stream_out_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*4+1] = storage_stream_out_V_pc_buffer[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*4+2] = storage_stream_out_V_pc_buffer[j].range(191,128).to_int64();
((long long*)&xlx_stream_elt)[0*4+3] = storage_stream_out_V_pc_buffer[j].range(255,192).to_int64();
((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_out)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_result);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<160> > result_pc_buffer(412);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "result");
  
            // push token into output port buffer
            if (AESL_token != "") {
              result_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 412; j < e; j += 1, ++i) {((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+0] = result_pc_buffer[i].range(31,0).to_int64();
((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+1] = result_pc_buffer[i].range(63,32).to_int64();
((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+2] = result_pc_buffer[i].range(95,64).to_int64();
((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+3] = result_pc_buffer[i].range(127,96).to_int64();
((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+4] = result_pc_buffer[i].range(159,128).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//msg
aesl_fh.touch(AUTOTB_TVIN_msg);
aesl_fh.touch(AUTOTB_TVOUT_msg);
//code
aesl_fh.touch(AUTOTB_TVIN_code);
aesl_fh.touch(AUTOTB_TVOUT_code);
//code_size
aesl_fh.touch(AUTOTB_TVIN_code_size);
aesl_fh.touch(AUTOTB_TVOUT_code_size);
//state
aesl_fh.touch(AUTOTB_TVIN_state);
aesl_fh.touch(AUTOTB_TVOUT_state);
//storage_stream_in_V
aesl_fh.touch(AUTOTB_TVIN_storage_stream_in_V);
aesl_fh.touch(AUTOTB_TVOUT_storage_stream_in_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_storage_stream_in_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_storage_stream_in_V);
//storage_stream_out_V
aesl_fh.touch(AUTOTB_TVIN_storage_stream_out_V);
aesl_fh.touch(AUTOTB_TVOUT_storage_stream_out_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_storage_stream_out_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_storage_stream_out_V);
//result
aesl_fh.touch(AUTOTB_TVIN_result);
aesl_fh.touch(AUTOTB_TVOUT_result);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_msg = 0;
// print msg Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_msg, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_msg = 0*32;
  if (__xlx_apatb_param_msg) {
    for (int j = 0  - 0, e = 9 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_msg)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_msg)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_msg)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_msg)[j*4+3];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_msg, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(9, &tcl_file.msg_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_msg, __xlx_sprintf_buffer.data());
}
// print code Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_code, __xlx_sprintf_buffer.data());
  {
    sc_bv<8> __xlx_tmp_lv = *((char*)__xlx_apatb_param_code);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_code, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.code_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_code, __xlx_sprintf_buffer.data());
}
// print code_size Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_code_size, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = *((long long*)&__xlx_apatb_param_code_size);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_code_size, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.code_size_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_code_size, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_state = 0;
// print state Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_state, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_state = 0*32;
  if (__xlx_apatb_param_state) {
    for (int j = 0  - 0, e = 8986 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_state)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_state)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_state)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_state)[j*4+3];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_state, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(8986, &tcl_file.state_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_state, __xlx_sprintf_buffer.data());
}
std::vector<__cosim_s20__> __xlx_apatb_param_storage_stream_in_stream_buf;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_in)->empty())
    __xlx_apatb_param_storage_stream_in_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_in)->read());
  for (int i = 0; i < __xlx_apatb_param_storage_stream_in_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_in)->write(__xlx_apatb_param_storage_stream_in_stream_buf[i]);
  }
long __xlx_apatb_param_storage_stream_in_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_in)->size();
std::vector<__cosim_s20__> __xlx_apatb_param_storage_stream_out_stream_buf;
long __xlx_apatb_param_storage_stream_out_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_out)->size();
unsigned __xlx_offset_byte_param_result = 0;
// print result Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_result, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_result = 0*20;
  if (__xlx_apatb_param_result) {
    for (int j = 0  - 0, e = 412 - 0; j != e; ++j) {
sc_bv<160> __xlx_tmp_lv;
__xlx_tmp_lv.range(31,0) = ((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+0];
__xlx_tmp_lv.range(63,32) = ((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+1];
__xlx_tmp_lv.range(95,64) = ((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+2];
__xlx_tmp_lv.range(127,96) = ((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+3];
__xlx_tmp_lv.range(159,128) = ((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+4];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_result, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(412, &tcl_file.result_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_result, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
execute_contract_fpga_hw_stub_wrapper(__xlx_apatb_param_msg, __xlx_apatb_param_code, __xlx_apatb_param_code_size, __xlx_apatb_param_state, __xlx_apatb_param_storage_stream_in, __xlx_apatb_param_storage_stream_out, __xlx_apatb_param_result);
CodeState = DUMP_OUTPUTS;
// print state Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_state, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_state = 0*32;
  if (__xlx_apatb_param_state) {
    for (int j = 0  - 0, e = 8986 - 0; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)__xlx_apatb_param_state)[j*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)__xlx_apatb_param_state)[j*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)__xlx_apatb_param_state)[j*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)__xlx_apatb_param_state)[j*4+3];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_state, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(8986, &tcl_file.state_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_state, __xlx_sprintf_buffer.data());
}
long __xlx_apatb_param_storage_stream_in_stream_buf_final_size = __xlx_apatb_param_storage_stream_in_stream_buf_size - ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_in)->size();
// print storage_stream_in_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_storage_stream_in_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_storage_stream_in_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv_hw;
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_storage_stream_in_stream_buf[j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_storage_stream_in_stream_buf[j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_storage_stream_in_stream_buf[j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_storage_stream_in_stream_buf[j])[0*4+3];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_storage_stream_in_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_storage_stream_in_stream_buf_final_size, &tcl_file.storage_stream_in_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_storage_stream_in_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_storage_stream_in_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_storage_stream_in_stream_buf_final_size > 0) {
  long storage_stream_in_V_stream_ingress_size = __xlx_apatb_param_storage_stream_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", storage_stream_in_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_storage_stream_in_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_storage_stream_in_stream_buf_final_size; j != e; j++) {
    storage_stream_in_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", storage_stream_in_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_storage_stream_in_V, __xlx_sprintf_buffer.data());
  }
} else {
  long storage_stream_in_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", storage_stream_in_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_storage_stream_in_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_storage_stream_in_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_storage_stream_in_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_storage_stream_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_storage_stream_in_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_storage_stream_in_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_storage_stream_out_stream_buf_final_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_out)->size() - __xlx_apatb_param_storage_stream_out_stream_buf_size;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_out)->empty())
    __xlx_apatb_param_storage_stream_out_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_out)->read());
  for (int i = 0; i < __xlx_apatb_param_storage_stream_out_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_out)->write(__xlx_apatb_param_storage_stream_out_stream_buf[i]);
  }
// print storage_stream_out_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_storage_stream_out_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_storage_stream_out_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_storage_stream_out_stream_buf[__xlx_apatb_param_storage_stream_out_stream_buf_size+j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_storage_stream_out_stream_buf[__xlx_apatb_param_storage_stream_out_stream_buf_size+j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_storage_stream_out_stream_buf[__xlx_apatb_param_storage_stream_out_stream_buf_size+j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_storage_stream_out_stream_buf[__xlx_apatb_param_storage_stream_out_stream_buf_size+j])[0*4+3];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_storage_stream_out_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_storage_stream_out_stream_buf_final_size, &tcl_file.storage_stream_out_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_storage_stream_out_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_storage_stream_out_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_storage_stream_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_storage_stream_out_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_storage_stream_out_V, __xlx_sprintf_buffer.data());
}// print result Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_result, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_result = 0*20;
  if (__xlx_apatb_param_result) {
    for (int j = 0  - 0, e = 412 - 0; j != e; ++j) {
sc_bv<160> __xlx_tmp_lv;
__xlx_tmp_lv.range(31,0) = ((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+0];
__xlx_tmp_lv.range(63,32) = ((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+1];
__xlx_tmp_lv.range(95,64) = ((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+2];
__xlx_tmp_lv.range(127,96) = ((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+3];
__xlx_tmp_lv.range(159,128) = ((int*)(((__cosim_s14__*)__xlx_apatb_param_result) + j))[0*5+4];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_result, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(412, &tcl_file.result_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_result, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
