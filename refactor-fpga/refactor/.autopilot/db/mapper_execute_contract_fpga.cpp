#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_storage_stream_in_V_cap_bc;
static AESL_RUNTIME_BC __xlx_storage_stream_in_V_size_Reader("../tv/stream_size/stream_size_in_storage_stream_in_V.dat");
unsigned int ap_apatb_storage_stream_out_V_cap_bc;
static AESL_RUNTIME_BC __xlx_storage_stream_out_V_size_Reader("../tv/stream_size/stream_size_out_storage_stream_out_V.dat");
struct __cosim_s20__ { char data[32]; };
struct __cosim_s14__ { char data[20]; };
extern "C" void execute_contract_fpga(__cosim_s20__*, volatile void *, long long, __cosim_s20__*, __cosim_s20__*, __cosim_s20__*, __cosim_s14__*);
extern "C" void apatb_execute_contract_fpga_hw(volatile void * __xlx_apatb_param_msg, volatile void * __xlx_apatb_param_code, long long __xlx_apatb_param_code_size, volatile void * __xlx_apatb_param_state, volatile void * __xlx_apatb_param_storage_stream_in, volatile void * __xlx_apatb_param_storage_stream_out, volatile void * __xlx_apatb_param_result) {
  // Collect __xlx_msg__tmp_vec
  vector<sc_bv<256> >__xlx_msg__tmp_vec;
  for (int j = 0, e = 9; j != e; ++j) {
    sc_bv<256> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_msg)[j*4+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_msg)[j*4+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_msg)[j*4+2];
    _xlx_tmp_sc.range(255, 192) = ((long long*)__xlx_apatb_param_msg)[j*4+3];
    __xlx_msg__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_msg = 9;
  int __xlx_offset_param_msg = 0;
  int __xlx_offset_byte_param_msg = 0*32;
  __cosim_s20__* __xlx_msg__input_buffer= new __cosim_s20__[__xlx_msg__tmp_vec.size()];
  for (int i = 0; i < __xlx_msg__tmp_vec.size(); ++i) {
    ((long long*)__xlx_msg__input_buffer)[i*4+0] = __xlx_msg__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_msg__input_buffer)[i*4+1] = __xlx_msg__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_msg__input_buffer)[i*4+2] = __xlx_msg__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_msg__input_buffer)[i*4+3] = __xlx_msg__tmp_vec[i].range(255, 192).to_uint64();
  }
  // Collect __xlx_state__tmp_vec
  vector<sc_bv<256> >__xlx_state__tmp_vec;
  for (int j = 0, e = 8986; j != e; ++j) {
    sc_bv<256> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_state)[j*4+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_state)[j*4+1];
    _xlx_tmp_sc.range(191, 128) = ((long long*)__xlx_apatb_param_state)[j*4+2];
    _xlx_tmp_sc.range(255, 192) = ((long long*)__xlx_apatb_param_state)[j*4+3];
    __xlx_state__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_state = 8986;
  int __xlx_offset_param_state = 0;
  int __xlx_offset_byte_param_state = 0*32;
  __cosim_s20__* __xlx_state__input_buffer= new __cosim_s20__[__xlx_state__tmp_vec.size()];
  for (int i = 0; i < __xlx_state__tmp_vec.size(); ++i) {
    ((long long*)__xlx_state__input_buffer)[i*4+0] = __xlx_state__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_state__input_buffer)[i*4+1] = __xlx_state__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_state__input_buffer)[i*4+2] = __xlx_state__tmp_vec[i].range(191, 128).to_uint64();
    ((long long*)__xlx_state__input_buffer)[i*4+3] = __xlx_state__tmp_vec[i].range(255, 192).to_uint64();
  }
  // collect __xlx_storage_stream_in_tmp_vec
  unsigned __xlx_storage_stream_in_V_tmp_Count = 0;
  unsigned __xlx_storage_stream_in_V_read_Size = __xlx_storage_stream_in_V_size_Reader.read_size();
  vector<__cosim_s20__> __xlx_storage_stream_in_tmp_vec;
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_in)->empty() && __xlx_storage_stream_in_V_tmp_Count < __xlx_storage_stream_in_V_read_Size) {
    __xlx_storage_stream_in_tmp_vec.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_in)->read());
    __xlx_storage_stream_in_V_tmp_Count++;
  }
  ap_apatb_storage_stream_in_V_cap_bc = __xlx_storage_stream_in_tmp_vec.size();
  // store input buffer
  __cosim_s20__* __xlx_storage_stream_in_input_buffer= new __cosim_s20__[__xlx_storage_stream_in_tmp_vec.size()];
  for (int i = 0; i < __xlx_storage_stream_in_tmp_vec.size(); ++i) {
    __xlx_storage_stream_in_input_buffer[i] = __xlx_storage_stream_in_tmp_vec[i];
  }
  //Create input buffer for storage_stream_out
  ap_apatb_storage_stream_out_V_cap_bc = __xlx_storage_stream_out_V_size_Reader.read_size();
  __cosim_s20__* __xlx_storage_stream_out_input_buffer= new __cosim_s20__[ap_apatb_storage_stream_out_V_cap_bc];
  // Collect __xlx_result__tmp_vec
  vector<sc_bv<160> >__xlx_result__tmp_vec;
  for (int j = 0, e = 412; j != e; ++j) {
    sc_bv<160> _xlx_tmp_sc;
    _xlx_tmp_sc.range(63, 0) = ((long long*)__xlx_apatb_param_result)[j*3+0];
    _xlx_tmp_sc.range(127, 64) = ((long long*)__xlx_apatb_param_result)[j*3+1];
    _xlx_tmp_sc.range(159, 128) = ((long long*)__xlx_apatb_param_result)[j*3+2];
    __xlx_result__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_result = 412;
  int __xlx_offset_param_result = 0;
  int __xlx_offset_byte_param_result = 0*20;
  __cosim_s14__* __xlx_result__input_buffer= new __cosim_s14__[__xlx_result__tmp_vec.size()];
  for (int i = 0; i < __xlx_result__tmp_vec.size(); ++i) {
    ((long long*)__xlx_result__input_buffer)[i*3+0] = __xlx_result__tmp_vec[i].range(63, 0).to_uint64();
    ((long long*)__xlx_result__input_buffer)[i*3+1] = __xlx_result__tmp_vec[i].range(127, 64).to_uint64();
    ((long long*)__xlx_result__input_buffer)[i*3+2] = __xlx_result__tmp_vec[i].range(159, 128).to_uint64();
  }
  // DUT call
  execute_contract_fpga(__xlx_msg__input_buffer, __xlx_apatb_param_code, __xlx_apatb_param_code_size, __xlx_state__input_buffer, __xlx_storage_stream_in_input_buffer, __xlx_storage_stream_out_input_buffer, __xlx_result__input_buffer);
// print __xlx_apatb_param_msg
  sc_bv<256>*__xlx_msg_output_buffer = new sc_bv<256>[__xlx_size_param_msg];
  for (int i = 0; i < __xlx_size_param_msg; ++i) {
    char* start = (char*)(&(__xlx_msg__input_buffer[__xlx_offset_param_msg]));
    __xlx_msg_output_buffer[i].range(63, 0) = ((long long*)start)[i*4+0];
    __xlx_msg_output_buffer[i].range(127, 64) = ((long long*)start)[i*4+1];
    __xlx_msg_output_buffer[i].range(191, 128) = ((long long*)start)[i*4+2];
    __xlx_msg_output_buffer[i].range(255, 192) = ((long long*)start)[i*4+3];
  }
  for (int i = 0; i < __xlx_size_param_msg; ++i) {
    ((long long*)__xlx_apatb_param_msg)[i*4+0] = __xlx_msg_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_msg)[i*4+1] = __xlx_msg_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_msg)[i*4+2] = __xlx_msg_output_buffer[i].range(191, 128).to_uint64();
    ((long long*)__xlx_apatb_param_msg)[i*4+3] = __xlx_msg_output_buffer[i].range(255, 192).to_uint64();
  }
// print __xlx_apatb_param_state
  sc_bv<256>*__xlx_state_output_buffer = new sc_bv<256>[__xlx_size_param_state];
  for (int i = 0; i < __xlx_size_param_state; ++i) {
    char* start = (char*)(&(__xlx_state__input_buffer[__xlx_offset_param_state]));
    __xlx_state_output_buffer[i].range(63, 0) = ((long long*)start)[i*4+0];
    __xlx_state_output_buffer[i].range(127, 64) = ((long long*)start)[i*4+1];
    __xlx_state_output_buffer[i].range(191, 128) = ((long long*)start)[i*4+2];
    __xlx_state_output_buffer[i].range(255, 192) = ((long long*)start)[i*4+3];
  }
  for (int i = 0; i < __xlx_size_param_state; ++i) {
    ((long long*)__xlx_apatb_param_state)[i*4+0] = __xlx_state_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_state)[i*4+1] = __xlx_state_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_state)[i*4+2] = __xlx_state_output_buffer[i].range(191, 128).to_uint64();
    ((long long*)__xlx_apatb_param_state)[i*4+3] = __xlx_state_output_buffer[i].range(255, 192).to_uint64();
  }
  for (unsigned i = 0; i <ap_apatb_storage_stream_out_V_cap_bc; ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_storage_stream_out)->write(__xlx_storage_stream_out_input_buffer[i]);
// print __xlx_apatb_param_result
  sc_bv<160>*__xlx_result_output_buffer = new sc_bv<160>[__xlx_size_param_result];
  for (int i = 0; i < __xlx_size_param_result; ++i) {
    char* start = (char*)(&(__xlx_result__input_buffer[__xlx_offset_param_result]));
    __xlx_result_output_buffer[i].range(63, 0) = ((long long*)start)[i*3+0];
    __xlx_result_output_buffer[i].range(127, 64) = ((long long*)start)[i*3+1];
    __xlx_result_output_buffer[i].range(159, 128) = ((long long*)start)[i*3+2];
  }
  for (int i = 0; i < __xlx_size_param_result; ++i) {
    ((long long*)__xlx_apatb_param_result)[i*3+0] = __xlx_result_output_buffer[i].range(63, 0).to_uint64();
    ((long long*)__xlx_apatb_param_result)[i*3+1] = __xlx_result_output_buffer[i].range(127, 64).to_uint64();
    ((long long*)__xlx_apatb_param_result)[i*3+2] = __xlx_result_output_buffer[i].range(159, 128).to_uint64();
  }
}
