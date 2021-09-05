#include <iostream>
#include "hls_stream.h"

using namespace std;

struct __cosim_T_1__ {char data[1];};
extern "C" void fpga_fifo_push_1(__cosim_T_1__* val, hls::stream<__cosim_T_1__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_1(__cosim_T_1__* val, hls::stream<__cosim_T_1__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_1(hls::stream<__cosim_T_1__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_1(hls::stream<__cosim_T_1__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_4__ {char data[4];};
extern "C" void fpga_fifo_push_4(__cosim_T_4__* val, hls::stream<__cosim_T_4__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_4(__cosim_T_4__* val, hls::stream<__cosim_T_4__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_4(hls::stream<__cosim_T_4__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_4(hls::stream<__cosim_T_4__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_20__ {char data[20];};
extern "C" void fpga_fifo_push_20(__cosim_T_20__* val, hls::stream<__cosim_T_20__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_20(__cosim_T_20__* val, hls::stream<__cosim_T_20__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_20(hls::stream<__cosim_T_20__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_20(hls::stream<__cosim_T_20__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_32__ {char data[32];};
extern "C" void fpga_fifo_push_32(__cosim_T_32__* val, hls::stream<__cosim_T_32__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_32(__cosim_T_32__* val, hls::stream<__cosim_T_32__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_32(hls::stream<__cosim_T_32__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_32(hls::stream<__cosim_T_32__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_16384__ {char data[16384];};
extern "C" void fpga_fifo_push_16384(__cosim_T_16384__* val, hls::stream<__cosim_T_16384__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_16384(__cosim_T_16384__* val, hls::stream<__cosim_T_16384__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_16384(hls::stream<__cosim_T_16384__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_16384(hls::stream<__cosim_T_16384__>* fifo) {
  return fifo->exist();
}
