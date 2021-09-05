; ModuleID = 'D:/projects/evmone_fpga/refactor-fpga/refactor/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.evmc::evmc_message" = type { i32, i32, i32, i64, %"struct.evmc::evmc_address", %"struct.evmc::evmc_address", [128 x i8], i64, %"struct.evmc::evmc_bytes32", %"struct.evmc::evmc_bytes32" }
%"struct.evmc::evmc_address" = type { [20 x i8] }
%"struct.evmc::evmc_bytes32" = type { [32 x i8] }
%struct.AdvancedExecutionState = type { %struct.ExecutionState, i32, [28 x i8] }
%struct.ExecutionState = type { i64, [24 x i8], %struct.Stack, %class.Memory, %"struct.evmc::evmc_message", %"class.evmc::HostContext", i32, %class.fpga_basic_string, %class.fpga_basic_string.0, i32, i64, i64, [16 x i8] }
%struct.Stack = type { i32, [28 x i8], [8192 x %"struct.intx::uint"] }
%"struct.intx::uint" = type { [4 x i64] }
%class.Memory = type { [16384 x i8] }
%"class.evmc::HostContext" = type { %"class.evmc::evmc_host_interface", %"struct.evmc::evmc_host_context", %"struct.evmc::evmc_tx_context" }
%"class.evmc::evmc_host_interface" = type { i8 }
%"struct.evmc::evmc_host_context" = type { i32 }
%"struct.evmc::evmc_tx_context" = type { %"struct.evmc::evmc_bytes32", %"struct.evmc::evmc_address", %"struct.evmc::evmc_address", i64, i64, i64, %"struct.evmc::evmc_bytes32", %"struct.evmc::evmc_bytes32" }
%class.fpga_basic_string = type { [256 x i8], i32 }
%class.fpga_basic_string.0 = type { [8192 x i8], i32 }
%union.instruction_argument = type { %"struct.intx::uint" }
%"struct.evmc::evmc_result" = type { i32, i64, [8192 x i8], i64, %"struct.evmc::evmc_address", [4 x i8] }

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #0

; Function Attrs: noinline
define void @apatb_execute_contract_fpga_ir(%"struct.evmc::evmc_message"* %msg, i8* %code, i64 %code_size, %struct.AdvancedExecutionState* %state, %union.instruction_argument* %storage_stream_in, %union.instruction_argument* %storage_stream_out, %"struct.evmc::evmc_result"* %result) local_unnamed_addr #1 {
entry:
  %msg_copy = alloca %"struct.evmc::evmc_message", align 512
  %code_copy = alloca i8, align 512
  %malloccall = tail call i8* @malloc(i64 287552)
  %state_copy = bitcast i8* %malloccall to %struct.AdvancedExecutionState*
  %storage_stream_in_copy = alloca %union.instruction_argument, align 512
  %storage_stream_out_copy = alloca %union.instruction_argument, align 512
  %malloccall1 = tail call i8* @malloc(i64 8240)
  %result_copy = bitcast i8* %malloccall1 to %"struct.evmc::evmc_result"*
  call fastcc void @copy_in(%"struct.evmc::evmc_message"* %msg, %"struct.evmc::evmc_message"* nonnull align 512 %msg_copy, i8* %code, i8* nonnull align 512 %code_copy, %struct.AdvancedExecutionState* %state, %struct.AdvancedExecutionState* %state_copy, %union.instruction_argument* %storage_stream_in, %union.instruction_argument* nonnull align 512 %storage_stream_in_copy, %union.instruction_argument* %storage_stream_out, %union.instruction_argument* nonnull align 512 %storage_stream_out_copy, %"struct.evmc::evmc_result"* %result, %"struct.evmc::evmc_result"* %result_copy)
  call void @apatb_execute_contract_fpga_hw(%"struct.evmc::evmc_message"* %msg_copy, i8* %code_copy, i64 %code_size, %struct.AdvancedExecutionState* %state_copy, %union.instruction_argument* %storage_stream_in_copy, %union.instruction_argument* %storage_stream_out_copy, %"struct.evmc::evmc_result"* %result_copy)
  call fastcc void @copy_out(%"struct.evmc::evmc_message"* %msg, %"struct.evmc::evmc_message"* nonnull align 512 %msg_copy, i8* %code, i8* nonnull align 512 %code_copy, %struct.AdvancedExecutionState* %state, %struct.AdvancedExecutionState* %state_copy, %union.instruction_argument* %storage_stream_in, %union.instruction_argument* nonnull align 512 %storage_stream_in_copy, %union.instruction_argument* %storage_stream_out, %union.instruction_argument* nonnull align 512 %storage_stream_out_copy, %"struct.evmc::evmc_result"* %result, %"struct.evmc::evmc_result"* %result_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: noinline
define internal fastcc void @copy_in(%"struct.evmc::evmc_message"*, %"struct.evmc::evmc_message"* noalias align 512, i8* readonly, i8* noalias align 512, %struct.AdvancedExecutionState*, %struct.AdvancedExecutionState* noalias, %union.instruction_argument*, %union.instruction_argument* noalias align 512, %union.instruction_argument*, %union.instruction_argument* noalias align 512, %"struct.evmc::evmc_result"*, %"struct.evmc::evmc_result"* noalias) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.evmc::evmc_message"(%"struct.evmc::evmc_message"* align 512 %1, %"struct.evmc::evmc_message"* %0)
  call fastcc void @onebyonecpy_hls.p0i8(i8* align 512 %3, i8* %2)
  call fastcc void @onebyonecpy_hls.p0struct.AdvancedExecutionState(%struct.AdvancedExecutionState* %5, %struct.AdvancedExecutionState* %4)
  call fastcc void @onebyonecpy_hls.p0union.instruction_argument(%union.instruction_argument* align 512 %7, %union.instruction_argument* %6)
  call fastcc void @onebyonecpy_hls.p0union.instruction_argument(%union.instruction_argument* align 512 %9, %union.instruction_argument* %8)
  call fastcc void @"onebyonecpy_hls.p0struct.evmc::evmc_result"(%"struct.evmc::evmc_result"* %11, %"struct.evmc::evmc_result"* %10)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0struct.evmc::evmc_message"(%"struct.evmc::evmc_message"* noalias align 512, %"struct.evmc::evmc_message"* noalias) unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.evmc::evmc_message"* %0, null
  %3 = icmp eq %"struct.evmc::evmc_message"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"struct.evmc::evmc_message"* %0 to i8*
  %6 = bitcast %"struct.evmc::evmc_message"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %.12.gep62 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %0, i32 0, i32 1
  %7 = bitcast i32* %.12.gep62 to i8*
  %.1.gep63 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 1
  %8 = bitcast i32* %.1.gep63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 4, i1 false)
  %.23.gep64 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %0, i32 0, i32 2
  %9 = bitcast i32* %.23.gep64 to i8*
  %.2.gep65 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 2
  %10 = bitcast i32* %.2.gep65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 4, i1 false)
  %.34.gep66 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %0, i32 0, i32 3
  %11 = bitcast i64* %.34.gep66 to i8*
  %.3.gep67 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 3
  %12 = bitcast i64* %.3.gep67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %12, i64 8, i1 false)
  %.4 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 4
  %.45 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %0, i32 0, i32 4
  %13 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 4, i32 0, i32 0
  %14 = call i1 @fpga_fifo_exist_20(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %copy
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_address"(%"struct.evmc::evmc_address"* %.45, %"struct.evmc::evmc_address"* %.4)
  br label %.split

; <label>:16:                                     ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %16
  %for.loop.idx74 = phi i64 [ 0, %16 ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr59 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %0, i32 0, i32 4, i32 0, i64 %for.loop.idx74
  %src.addr60 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 4, i32 0, i64 %for.loop.idx74
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr59, i8* align 1 %src.addr60, i64 1, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx74, 1
  %exitcond78 = icmp ne i64 %for.loop.idx.next, 20
  br i1 %exitcond78, label %for.loop, label %.split

.split:                                           ; preds = %for.loop, %15
  %.5 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 5
  %.56 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %0, i32 0, i32 5
  %17 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 5, i32 0, i32 0
  %18 = call i1 @fpga_fifo_exist_20(i8* %17)
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %.split
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_address"(%"struct.evmc::evmc_address"* %.56, %"struct.evmc::evmc_address"* %.5)
  br label %.split10

; <label>:20:                                     ; preds = %.split
  br label %for.loop9

for.loop9:                                        ; preds = %for.loop9, %20
  %for.loop.idx1173 = phi i64 [ 0, %20 ], [ %for.loop.idx11.next, %for.loop9 ]
  %dst.addr1357 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %0, i32 0, i32 5, i32 0, i64 %for.loop.idx1173
  %src.addr1458 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 5, i32 0, i64 %for.loop.idx1173
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr1357, i8* align 1 %src.addr1458, i64 1, i1 false)
  %for.loop.idx11.next = add nuw nsw i64 %for.loop.idx1173, 1
  %exitcond77 = icmp ne i64 %for.loop.idx11.next, 20
  br i1 %exitcond77, label %for.loop9, label %.split10

.split10:                                         ; preds = %for.loop9, %19
  br label %for.loop18

for.loop18:                                       ; preds = %for.loop18, %.split10
  %for.loop.idx2072 = phi i64 [ 0, %.split10 ], [ %for.loop.idx20.next, %for.loop18 ]
  %dst.addr2255 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %0, i32 0, i32 6, i64 %for.loop.idx2072
  %src.addr2356 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 6, i64 %for.loop.idx2072
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr2255, i8* align 1 %src.addr2356, i64 1, i1 false)
  %for.loop.idx20.next = add nuw nsw i64 %for.loop.idx2072, 1
  %exitcond76 = icmp ne i64 %for.loop.idx20.next, 128
  br i1 %exitcond76, label %for.loop18, label %.split19

.split19:                                         ; preds = %for.loop18
  %.724.gep68 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %0, i32 0, i32 7
  %21 = bitcast i64* %.724.gep68 to i8*
  %.7.gep69 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 7
  %22 = bitcast i64* %.7.gep69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 %22, i64 8, i1 false)
  %.8 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 8
  %.825 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %0, i32 0, i32 8
  %23 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 8, i32 0, i32 0
  %24 = call i1 @fpga_fifo_exist_32(i8* %23)
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %.split19
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_bytes32"(%"struct.evmc::evmc_bytes32"* %.825, %"struct.evmc::evmc_bytes32"* %.8)
  br label %.split29

; <label>:26:                                     ; preds = %.split19
  br label %for.loop28

for.loop28:                                       ; preds = %for.loop28, %26
  %for.loop.idx3071 = phi i64 [ 0, %26 ], [ %for.loop.idx30.next, %for.loop28 ]
  %dst.addr3253 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %0, i32 0, i32 8, i32 0, i64 %for.loop.idx3071
  %src.addr3354 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 8, i32 0, i64 %for.loop.idx3071
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr3253, i8* align 1 %src.addr3354, i64 1, i1 false)
  %for.loop.idx30.next = add nuw nsw i64 %for.loop.idx3071, 1
  %exitcond75 = icmp ne i64 %for.loop.idx30.next, 32
  br i1 %exitcond75, label %for.loop28, label %.split29

.split29:                                         ; preds = %for.loop28, %25
  %.9 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 9
  %.934 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %0, i32 0, i32 9
  %27 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 9, i32 0, i32 0
  %28 = call i1 @fpga_fifo_exist_32(i8* %27)
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %.split29
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_bytes32"(%"struct.evmc::evmc_bytes32"* %.934, %"struct.evmc::evmc_bytes32"* %.9)
  br label %ret

; <label>:30:                                     ; preds = %.split29
  br label %for.loop37

for.loop37:                                       ; preds = %for.loop37, %30
  %for.loop.idx3970 = phi i64 [ 0, %30 ], [ %for.loop.idx39.next, %for.loop37 ]
  %dst.addr4151 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %0, i32 0, i32 9, i32 0, i64 %for.loop.idx3970
  %src.addr4252 = getelementptr %"struct.evmc::evmc_message", %"struct.evmc::evmc_message"* %1, i32 0, i32 9, i32 0, i64 %for.loop.idx3970
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr4151, i8* align 1 %src.addr4252, i64 1, i1 false)
  %for.loop.idx39.next = add nuw nsw i64 %for.loop.idx3970, 1
  %exitcond = icmp ne i64 %for.loop.idx39.next, 32
  br i1 %exitcond, label %for.loop37, label %ret

ret:                                              ; preds = %for.loop37, %29, %entry
  ret void
}

declare i1 @fpga_fifo_exist_20(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0struct.evmc::evmc_address"(%"struct.evmc::evmc_address"* noalias nocapture, %"struct.evmc::evmc_address"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"struct.evmc::evmc_address"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"struct.evmc::evmc_address"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_20(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"struct.evmc::evmc_address"* %2 to i8*
  %6 = bitcast %"struct.evmc::evmc_address"* %1 to i8*
  call void @fpga_fifo_pop_20(i8* %5, i8* %6)
  %7 = load volatile %"struct.evmc::evmc_address", %"struct.evmc::evmc_address"* %2
  %8 = bitcast %"struct.evmc::evmc_address"* %2 to i8*
  %9 = bitcast %"struct.evmc::evmc_address"* %0 to i8*
  call void @fpga_fifo_push_20(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %"struct.evmc::evmc_address", %"struct.evmc::evmc_address"* %1, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.evmc::evmc_address", %"struct.evmc::evmc_address"* %0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 20, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_32(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0struct.evmc::evmc_bytes32"(%"struct.evmc::evmc_bytes32"* noalias nocapture, %"struct.evmc::evmc_bytes32"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"struct.evmc::evmc_bytes32"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"struct.evmc::evmc_bytes32"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_32(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"struct.evmc::evmc_bytes32"* %2 to i8*
  %6 = bitcast %"struct.evmc::evmc_bytes32"* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %5, i8* %6)
  %7 = load volatile %"struct.evmc::evmc_bytes32", %"struct.evmc::evmc_bytes32"* %2
  %8 = bitcast %"struct.evmc::evmc_bytes32"* %2 to i8*
  %9 = bitcast %"struct.evmc::evmc_bytes32"* %0 to i8*
  call void @fpga_fifo_push_32(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %"struct.evmc::evmc_bytes32", %"struct.evmc::evmc_bytes32"* %1, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %"struct.evmc::evmc_bytes32", %"struct.evmc::evmc_bytes32"* %0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 32, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i8(i8* noalias align 512, i8* noalias readonly) unnamed_addr #5 {
entry:
  %2 = icmp eq i8* %0, null
  %3 = icmp eq i8* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %0, i8* nonnull align 1 %1, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0struct.AdvancedExecutionState(%struct.AdvancedExecutionState* noalias, %struct.AdvancedExecutionState* noalias) unnamed_addr #3 {
entry:
  %2 = icmp eq %struct.AdvancedExecutionState* %0, null
  %3 = icmp eq %struct.AdvancedExecutionState* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %struct.AdvancedExecutionState* %0 to i8*
  %6 = bitcast %struct.AdvancedExecutionState* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 8, i1 false)
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx338 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr280 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 1, i64 %for.loop.idx338
  %src.addr281 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 1, i64 %for.loop.idx338
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr280, i8* align 1 %src.addr281, i64 1, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx338, 1
  %exitcond356 = icmp ne i64 %for.loop.idx.next, 24
  br i1 %exitcond356, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop
  %.01.2.0143.gep283 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 2, i32 0
  %7 = bitcast i32* %.01.2.0143.gep283 to i8*
  %.0.2.0142.gep284 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 2, i32 0
  %8 = bitcast i32* %.0.2.0142.gep284 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 4, i1 false)
  br label %for.loop3

for.loop3:                                        ; preds = %for.loop3, %copy.split
  %for.loop.idx4337 = phi i64 [ 0, %copy.split ], [ %for.loop.idx4.next, %for.loop3 ]
  %dst.addr6278 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 2, i32 1, i64 %for.loop.idx4337
  %src.addr7279 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 2, i32 1, i64 %for.loop.idx4337
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr6278, i8* align 1 %src.addr7279, i64 1, i1 false)
  %for.loop.idx4.next = add nuw nsw i64 %for.loop.idx4337, 1
  %exitcond355 = icmp ne i64 %for.loop.idx4.next, 28
  br i1 %exitcond355, label %for.loop3, label %copy.split.split

copy.split.split:                                 ; preds = %for.loop3
  br label %for.loop9

for.loop9:                                        ; preds = %for.loop.head8, %copy.split.split
  %for.loop.idx10335 = phi i64 [ 0, %copy.split.split ], [ %for.loop.idx10.next, %for.loop.head8 ]
  %dst.addr12272 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 2, i32 2, i64 %for.loop.idx10335
  %src.addr13273 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 2, i32 2, i64 %for.loop.idx10335
  %9 = bitcast %"struct.intx::uint"* %src.addr13273 to i8*
  %10 = call i1 @fpga_fifo_exist_32(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %for.loop9
  call fastcc void @"streamcpy_hls.p0struct.intx::uint"(%"struct.intx::uint"* %dst.addr12272, %"struct.intx::uint"* %src.addr13273)
  br label %for.loop.head8

; <label>:12:                                     ; preds = %for.loop9
  br label %for.loop15

for.loop15:                                       ; preds = %for.loop15, %12
  %for.loop.idx16334 = phi i64 [ 0, %12 ], [ %for.loop.idx16.next, %for.loop15 ]
  %dst.addr18276.gep317 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 2, i32 2, i64 %for.loop.idx10335, i32 0, i64 %for.loop.idx16334
  %13 = bitcast i64* %dst.addr18276.gep317 to i8*
  %src.addr19277.gep318 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 2, i32 2, i64 %for.loop.idx10335, i32 0, i64 %for.loop.idx16334
  %14 = bitcast i64* %src.addr19277.gep318 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %14, i64 8, i1 false)
  %for.loop.idx16.next = add nuw nsw i64 %for.loop.idx16334, 1
  %exitcond353 = icmp ne i64 %for.loop.idx16.next, 4
  br i1 %exitcond353, label %for.loop15, label %for.loop.head8

for.loop.head8:                                   ; preds = %for.loop15, %11
  %for.loop.idx10.next = add nuw nsw i64 %for.loop.idx10335, 1
  %exitcond354 = icmp ne i64 %for.loop.idx10.next, 8192
  br i1 %exitcond354, label %for.loop9, label %copy.split.split.split

copy.split.split.split:                           ; preds = %for.loop.head8
  %.0.3148 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 3
  %.01.3149 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 3
  %15 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %16 = call i1 @fpga_fifo_exist_16384(i8* %15)
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %copy.split.split.split
  call fastcc void @streamcpy_hls.p0class.Memory(%class.Memory* %.01.3149, %class.Memory* %.0.3148)
  br label %.split23

; <label>:18:                                     ; preds = %copy.split.split.split
  br label %for.loop22

for.loop22:                                       ; preds = %for.loop22, %18
  %for.loop.idx24333 = phi i64 [ 0, %18 ], [ %for.loop.idx24.next, %for.loop22 ]
  %dst.addr26270 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 3, i32 0, i64 %for.loop.idx24333
  %src.addr27271 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 3, i32 0, i64 %for.loop.idx24333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr26270, i8* align 1 %src.addr27271, i64 1, i1 false)
  %for.loop.idx24.next = add nuw nsw i64 %for.loop.idx24333, 1
  %exitcond352 = icmp ne i64 %for.loop.idx24.next, 16384
  br i1 %exitcond352, label %for.loop22, label %.split23

.split23:                                         ; preds = %for.loop22, %17
  %.01.4.0155.gep285 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 4, i32 0
  %19 = bitcast i32* %.01.4.0155.gep285 to i8*
  %.0.4.0154.gep286 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 0
  %20 = bitcast i32* %.0.4.0154.gep286 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 %20, i64 4, i1 false)
  %.01.4.1157.gep287 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 4, i32 1
  %21 = bitcast i32* %.01.4.1157.gep287 to i8*
  %.0.4.1156.gep288 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 1
  %22 = bitcast i32* %.0.4.1156.gep288 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 %22, i64 4, i1 false)
  %.01.4.2159.gep289 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 4, i32 2
  %23 = bitcast i32* %.01.4.2159.gep289 to i8*
  %.0.4.2158.gep290 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 2
  %24 = bitcast i32* %.0.4.2158.gep290 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 %24, i64 4, i1 false)
  %.01.4.3161.gep291 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 4, i32 3
  %25 = bitcast i64* %.01.4.3161.gep291 to i8*
  %.0.4.3160.gep292 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 3
  %26 = bitcast i64* %.0.4.3160.gep292 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 %26, i64 8, i1 false)
  %.0.4.4162 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 4
  %.01.4.4163 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 4, i32 4
  %27 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 4, i32 0, i32 0
  %28 = call i1 @fpga_fifo_exist_20(i8* %27)
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %.split23
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_address"(%"struct.evmc::evmc_address"* %.01.4.4163, %"struct.evmc::evmc_address"* %.0.4.4162)
  br label %.split31

; <label>:30:                                     ; preds = %.split23
  br label %for.loop30

for.loop30:                                       ; preds = %for.loop30, %30
  %for.loop.idx32332 = phi i64 [ 0, %30 ], [ %for.loop.idx32.next, %for.loop30 ]
  %dst.addr34268 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 4, i32 4, i32 0, i64 %for.loop.idx32332
  %src.addr35269 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 4, i32 0, i64 %for.loop.idx32332
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr34268, i8* align 1 %src.addr35269, i64 1, i1 false)
  %for.loop.idx32.next = add nuw nsw i64 %for.loop.idx32332, 1
  %exitcond351 = icmp ne i64 %for.loop.idx32.next, 20
  br i1 %exitcond351, label %for.loop30, label %.split31

.split31:                                         ; preds = %for.loop30, %29
  %.0.4.5166 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 5
  %.01.4.5167 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 4, i32 5
  %31 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 5, i32 0, i32 0
  %32 = call i1 @fpga_fifo_exist_20(i8* %31)
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %.split31
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_address"(%"struct.evmc::evmc_address"* %.01.4.5167, %"struct.evmc::evmc_address"* %.0.4.5166)
  br label %.split39

; <label>:34:                                     ; preds = %.split31
  br label %for.loop38

for.loop38:                                       ; preds = %for.loop38, %34
  %for.loop.idx40331 = phi i64 [ 0, %34 ], [ %for.loop.idx40.next, %for.loop38 ]
  %dst.addr42266 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 4, i32 5, i32 0, i64 %for.loop.idx40331
  %src.addr43267 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 5, i32 0, i64 %for.loop.idx40331
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr42266, i8* align 1 %src.addr43267, i64 1, i1 false)
  %for.loop.idx40.next = add nuw nsw i64 %for.loop.idx40331, 1
  %exitcond350 = icmp ne i64 %for.loop.idx40.next, 20
  br i1 %exitcond350, label %for.loop38, label %.split39

.split39:                                         ; preds = %for.loop38, %33
  br label %for.loop46

for.loop46:                                       ; preds = %for.loop46, %.split39
  %for.loop.idx48330 = phi i64 [ 0, %.split39 ], [ %for.loop.idx48.next, %for.loop46 ]
  %dst.addr50264 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 4, i32 6, i64 %for.loop.idx48330
  %src.addr51265 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 6, i64 %for.loop.idx48330
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr50264, i8* align 1 %src.addr51265, i64 1, i1 false)
  %for.loop.idx48.next = add nuw nsw i64 %for.loop.idx48330, 1
  %exitcond349 = icmp ne i64 %for.loop.idx48.next, 128
  br i1 %exitcond349, label %for.loop46, label %.split47

.split47:                                         ; preds = %for.loop46
  %.01.4.7173.gep293 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 4, i32 7
  %35 = bitcast i64* %.01.4.7173.gep293 to i8*
  %.0.4.7172.gep294 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 7
  %36 = bitcast i64* %.0.4.7172.gep294 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %35, i8* align 1 %36, i64 8, i1 false)
  %.0.4.8174 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 8
  %.01.4.8175 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 4, i32 8
  %37 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 8, i32 0, i32 0
  %38 = call i1 @fpga_fifo_exist_32(i8* %37)
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %.split47
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_bytes32"(%"struct.evmc::evmc_bytes32"* %.01.4.8175, %"struct.evmc::evmc_bytes32"* %.0.4.8174)
  br label %.split55

; <label>:40:                                     ; preds = %.split47
  br label %for.loop54

for.loop54:                                       ; preds = %for.loop54, %40
  %for.loop.idx56329 = phi i64 [ 0, %40 ], [ %for.loop.idx56.next, %for.loop54 ]
  %dst.addr58262 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 4, i32 8, i32 0, i64 %for.loop.idx56329
  %src.addr59263 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 8, i32 0, i64 %for.loop.idx56329
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr58262, i8* align 1 %src.addr59263, i64 1, i1 false)
  %for.loop.idx56.next = add nuw nsw i64 %for.loop.idx56329, 1
  %exitcond348 = icmp ne i64 %for.loop.idx56.next, 32
  br i1 %exitcond348, label %for.loop54, label %.split55

.split55:                                         ; preds = %for.loop54, %39
  %.0.4.9178 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 9
  %.01.4.9179 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 4, i32 9
  %41 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 9, i32 0, i32 0
  %42 = call i1 @fpga_fifo_exist_32(i8* %41)
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %.split55
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_bytes32"(%"struct.evmc::evmc_bytes32"* %.01.4.9179, %"struct.evmc::evmc_bytes32"* %.0.4.9178)
  br label %.split63

; <label>:44:                                     ; preds = %.split55
  br label %for.loop62

for.loop62:                                       ; preds = %for.loop62, %44
  %for.loop.idx64328 = phi i64 [ 0, %44 ], [ %for.loop.idx64.next, %for.loop62 ]
  %dst.addr66260 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 4, i32 9, i32 0, i64 %for.loop.idx64328
  %src.addr67261 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 4, i32 9, i32 0, i64 %for.loop.idx64328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr66260, i8* align 1 %src.addr67261, i64 1, i1 false)
  %for.loop.idx64.next = add nuw nsw i64 %for.loop.idx64328, 1
  %exitcond347 = icmp ne i64 %for.loop.idx64.next, 32
  br i1 %exitcond347, label %for.loop62, label %.split63

.split63:                                         ; preds = %for.loop62, %43
  %.0.5.0184 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 0
  %.01.5.0185 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 0
  %45 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 0, i32 0
  %46 = call i1 @fpga_fifo_exist_1(i8* %45)
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %.split63
  call fastcc void @"streamcpy_hls.p0class.evmc::evmc_host_interface"(%"class.evmc::evmc_host_interface"* %.01.5.0185, %"class.evmc::evmc_host_interface"* %.0.5.0184)
  br label %49

; <label>:48:                                     ; preds = %.split63
  %.01.5.0.0187 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.01.5.0.0187, i8* align 1 %45, i64 1, i1 false)
  br label %49

; <label>:49:                                     ; preds = %48, %47
  %.0.5.1188 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 1
  %.01.5.1189 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 1
  %50 = bitcast %"struct.evmc::evmc_host_context"* %.0.5.1188 to i8*
  %51 = call i1 @fpga_fifo_exist_4(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_host_context"(%"struct.evmc::evmc_host_context"* %.01.5.1189, %"struct.evmc::evmc_host_context"* %.0.5.1188)
  br label %56

; <label>:53:                                     ; preds = %49
  %.01.5.1.0191.gep295 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 1, i32 0
  %54 = bitcast i32* %.01.5.1.0191.gep295 to i8*
  %.0.5.1.0190.gep296 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 1, i32 0
  %55 = bitcast i32* %.0.5.1.0190.gep296 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %54, i8* align 1 %55, i64 4, i1 false)
  br label %56

; <label>:56:                                     ; preds = %53, %52
  %.0.5.2.0194 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 0
  %.01.5.2.0195 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 2, i32 0
  %57 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 0, i32 0, i32 0
  %58 = call i1 @fpga_fifo_exist_32(i8* %57)
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %56
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_bytes32"(%"struct.evmc::evmc_bytes32"* %.01.5.2.0195, %"struct.evmc::evmc_bytes32"* %.0.5.2.0194)
  br label %.split71

; <label>:60:                                     ; preds = %56
  br label %for.loop70

for.loop70:                                       ; preds = %for.loop70, %60
  %for.loop.idx72327 = phi i64 [ 0, %60 ], [ %for.loop.idx72.next, %for.loop70 ]
  %dst.addr74258 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 2, i32 0, i32 0, i64 %for.loop.idx72327
  %src.addr75259 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 0, i32 0, i64 %for.loop.idx72327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr74258, i8* align 1 %src.addr75259, i64 1, i1 false)
  %for.loop.idx72.next = add nuw nsw i64 %for.loop.idx72327, 1
  %exitcond346 = icmp ne i64 %for.loop.idx72.next, 32
  br i1 %exitcond346, label %for.loop70, label %.split71

.split71:                                         ; preds = %for.loop70, %59
  %.0.5.2.1198 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 1
  %.01.5.2.1199 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 2, i32 1
  %61 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 1, i32 0, i32 0
  %62 = call i1 @fpga_fifo_exist_20(i8* %61)
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %.split71
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_address"(%"struct.evmc::evmc_address"* %.01.5.2.1199, %"struct.evmc::evmc_address"* %.0.5.2.1198)
  br label %.split79

; <label>:64:                                     ; preds = %.split71
  br label %for.loop78

for.loop78:                                       ; preds = %for.loop78, %64
  %for.loop.idx80326 = phi i64 [ 0, %64 ], [ %for.loop.idx80.next, %for.loop78 ]
  %dst.addr82256 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 2, i32 1, i32 0, i64 %for.loop.idx80326
  %src.addr83257 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 1, i32 0, i64 %for.loop.idx80326
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr82256, i8* align 1 %src.addr83257, i64 1, i1 false)
  %for.loop.idx80.next = add nuw nsw i64 %for.loop.idx80326, 1
  %exitcond345 = icmp ne i64 %for.loop.idx80.next, 20
  br i1 %exitcond345, label %for.loop78, label %.split79

.split79:                                         ; preds = %for.loop78, %63
  %.0.5.2.2202 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 2
  %.01.5.2.2203 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 2, i32 2
  %65 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 2, i32 0, i32 0
  %66 = call i1 @fpga_fifo_exist_20(i8* %65)
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %.split79
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_address"(%"struct.evmc::evmc_address"* %.01.5.2.2203, %"struct.evmc::evmc_address"* %.0.5.2.2202)
  br label %.split87

; <label>:68:                                     ; preds = %.split79
  br label %for.loop86

for.loop86:                                       ; preds = %for.loop86, %68
  %for.loop.idx88325 = phi i64 [ 0, %68 ], [ %for.loop.idx88.next, %for.loop86 ]
  %dst.addr90254 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 2, i32 2, i32 0, i64 %for.loop.idx88325
  %src.addr91255 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 2, i32 0, i64 %for.loop.idx88325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr90254, i8* align 1 %src.addr91255, i64 1, i1 false)
  %for.loop.idx88.next = add nuw nsw i64 %for.loop.idx88325, 1
  %exitcond344 = icmp ne i64 %for.loop.idx88.next, 20
  br i1 %exitcond344, label %for.loop86, label %.split87

.split87:                                         ; preds = %for.loop86, %67
  %.01.5.2.3207.gep297 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 2, i32 3
  %69 = bitcast i64* %.01.5.2.3207.gep297 to i8*
  %.0.5.2.3206.gep298 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 3
  %70 = bitcast i64* %.0.5.2.3206.gep298 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 %70, i64 8, i1 false)
  %.01.5.2.4209.gep299 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 2, i32 4
  %71 = bitcast i64* %.01.5.2.4209.gep299 to i8*
  %.0.5.2.4208.gep300 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 4
  %72 = bitcast i64* %.0.5.2.4208.gep300 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %71, i8* align 1 %72, i64 8, i1 false)
  %.01.5.2.5211.gep301 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 2, i32 5
  %73 = bitcast i64* %.01.5.2.5211.gep301 to i8*
  %.0.5.2.5210.gep302 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 5
  %74 = bitcast i64* %.0.5.2.5210.gep302 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %73, i8* align 1 %74, i64 8, i1 false)
  %.0.5.2.6212 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 6
  %.01.5.2.6213 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 2, i32 6
  %75 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 6, i32 0, i32 0
  %76 = call i1 @fpga_fifo_exist_32(i8* %75)
  br i1 %76, label %77, label %78

; <label>:77:                                     ; preds = %.split87
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_bytes32"(%"struct.evmc::evmc_bytes32"* %.01.5.2.6213, %"struct.evmc::evmc_bytes32"* %.0.5.2.6212)
  br label %.split95

; <label>:78:                                     ; preds = %.split87
  br label %for.loop94

for.loop94:                                       ; preds = %for.loop94, %78
  %for.loop.idx96324 = phi i64 [ 0, %78 ], [ %for.loop.idx96.next, %for.loop94 ]
  %dst.addr98252 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 2, i32 6, i32 0, i64 %for.loop.idx96324
  %src.addr99253 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 6, i32 0, i64 %for.loop.idx96324
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr98252, i8* align 1 %src.addr99253, i64 1, i1 false)
  %for.loop.idx96.next = add nuw nsw i64 %for.loop.idx96324, 1
  %exitcond343 = icmp ne i64 %for.loop.idx96.next, 32
  br i1 %exitcond343, label %for.loop94, label %.split95

.split95:                                         ; preds = %for.loop94, %77
  %.0.5.2.7216 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 7
  %.01.5.2.7217 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 2, i32 7
  %79 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 7, i32 0, i32 0
  %80 = call i1 @fpga_fifo_exist_32(i8* %79)
  br i1 %80, label %81, label %82

; <label>:81:                                     ; preds = %.split95
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_bytes32"(%"struct.evmc::evmc_bytes32"* %.01.5.2.7217, %"struct.evmc::evmc_bytes32"* %.0.5.2.7216)
  br label %.split103

; <label>:82:                                     ; preds = %.split95
  br label %for.loop102

for.loop102:                                      ; preds = %for.loop102, %82
  %for.loop.idx104323 = phi i64 [ 0, %82 ], [ %for.loop.idx104.next, %for.loop102 ]
  %dst.addr106250 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 5, i32 2, i32 7, i32 0, i64 %for.loop.idx104323
  %src.addr107251 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 5, i32 2, i32 7, i32 0, i64 %for.loop.idx104323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr106250, i8* align 1 %src.addr107251, i64 1, i1 false)
  %for.loop.idx104.next = add nuw nsw i64 %for.loop.idx104323, 1
  %exitcond342 = icmp ne i64 %for.loop.idx104.next, 32
  br i1 %exitcond342, label %for.loop102, label %.split103

.split103:                                        ; preds = %for.loop102, %81
  %.01.6221.gep303 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 6
  %83 = bitcast i32* %.01.6221.gep303 to i8*
  %.0.6220.gep304 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 6
  %84 = bitcast i32* %.0.6220.gep304 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %83, i8* align 1 %84, i64 4, i1 false)
  br label %for.loop110

for.loop110:                                      ; preds = %for.loop110, %.split103
  %for.loop.idx112322 = phi i64 [ 0, %.split103 ], [ %for.loop.idx112.next, %for.loop110 ]
  %dst.addr114248 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 7, i32 0, i64 %for.loop.idx112322
  %src.addr115249 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 7, i32 0, i64 %for.loop.idx112322
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr114248, i8* align 1 %src.addr115249, i64 1, i1 false)
  %for.loop.idx112.next = add nuw nsw i64 %for.loop.idx112322, 1
  %exitcond341 = icmp ne i64 %for.loop.idx112.next, 256
  br i1 %exitcond341, label %for.loop110, label %.split111

.split111:                                        ; preds = %for.loop110
  %.01.7.1227.gep305 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 7, i32 1
  %85 = bitcast i32* %.01.7.1227.gep305 to i8*
  %.0.7.1226.gep306 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 7, i32 1
  %86 = bitcast i32* %.0.7.1226.gep306 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %85, i8* align 1 %86, i64 4, i1 false)
  br label %for.loop117

for.loop117:                                      ; preds = %for.loop117, %.split111
  %for.loop.idx118321 = phi i64 [ 0, %.split111 ], [ %for.loop.idx118.next, %for.loop117 ]
  %dst.addr120246 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 8, i32 0, i64 %for.loop.idx118321
  %src.addr121247 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 8, i32 0, i64 %for.loop.idx118321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr120246, i8* align 1 %src.addr121247, i64 1, i1 false)
  %for.loop.idx118.next = add nuw nsw i64 %for.loop.idx118321, 1
  %exitcond340 = icmp ne i64 %for.loop.idx118.next, 8192
  br i1 %exitcond340, label %for.loop117, label %.split111.split

.split111.split:                                  ; preds = %for.loop117
  %.01.8.1233.gep307 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 8, i32 1
  %87 = bitcast i32* %.01.8.1233.gep307 to i8*
  %.0.8.1232.gep308 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 8, i32 1
  %88 = bitcast i32* %.0.8.1232.gep308 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %87, i8* align 1 %88, i64 4, i1 false)
  %.01.9235.gep309 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 9
  %89 = bitcast i32* %.01.9235.gep309 to i8*
  %.0.9234.gep310 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 9
  %90 = bitcast i32* %.0.9234.gep310 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %89, i8* align 1 %90, i64 4, i1 false)
  %.01.10237.gep311 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 10
  %91 = bitcast i64* %.01.10237.gep311 to i8*
  %.0.10236.gep312 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 10
  %92 = bitcast i64* %.0.10236.gep312 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %91, i8* align 1 %92, i64 8, i1 false)
  %.01.11239.gep313 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 11
  %93 = bitcast i64* %.01.11239.gep313 to i8*
  %.0.11238.gep314 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 11
  %94 = bitcast i64* %.0.11238.gep314 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %93, i8* align 1 %94, i64 8, i1 false)
  br label %for.loop123

for.loop123:                                      ; preds = %for.loop123, %.split111.split
  %for.loop.idx124320 = phi i64 [ 0, %.split111.split ], [ %for.loop.idx124.next, %for.loop123 ]
  %dst.addr126244 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 0, i32 12, i64 %for.loop.idx124320
  %src.addr127245 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 0, i32 12, i64 %for.loop.idx124320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr126244, i8* align 1 %src.addr127245, i64 1, i1 false)
  %for.loop.idx124.next = add nuw nsw i64 %for.loop.idx124320, 1
  %exitcond339 = icmp ne i64 %for.loop.idx124.next, 16
  br i1 %exitcond339, label %for.loop123, label %.split111.split.split

.split111.split.split:                            ; preds = %for.loop123
  %.1128.gep315 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 1
  %95 = bitcast i32* %.1128.gep315 to i8*
  %.1.gep316 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 1
  %96 = bitcast i32* %.1.gep316 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %95, i8* align 1 %96, i64 4, i1 false)
  br label %for.loop131

for.loop131:                                      ; preds = %for.loop131, %.split111.split.split
  %for.loop.idx132319 = phi i64 [ 0, %.split111.split.split ], [ %for.loop.idx132.next, %for.loop131 ]
  %dst.addr134242 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %0, i32 0, i32 2, i64 %for.loop.idx132319
  %src.addr135243 = getelementptr %struct.AdvancedExecutionState, %struct.AdvancedExecutionState* %1, i32 0, i32 2, i64 %for.loop.idx132319
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr134242, i8* align 1 %src.addr135243, i64 1, i1 false)
  %for.loop.idx132.next = add nuw nsw i64 %for.loop.idx132319, 1
  %exitcond = icmp ne i64 %for.loop.idx132.next, 28
  br i1 %exitcond, label %for.loop131, label %ret

ret:                                              ; preds = %for.loop131, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0struct.intx::uint"(%"struct.intx::uint"* noalias nocapture, %"struct.intx::uint"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"struct.intx::uint"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"struct.intx::uint"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_32(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"struct.intx::uint"* %2 to i8*
  %6 = bitcast %"struct.intx::uint"* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %5, i8* %6)
  %7 = load volatile %"struct.intx::uint", %"struct.intx::uint"* %2
  %8 = bitcast %"struct.intx::uint"* %2 to i8*
  %9 = bitcast %"struct.intx::uint"* %0 to i8*
  call void @fpga_fifo_push_32(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %"struct.intx::uint"* %1 to i8*
  %11 = bitcast %"struct.intx::uint"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 32, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_16384(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0class.Memory(%class.Memory* noalias nocapture, %class.Memory* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %class.Memory
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %class.Memory* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16384(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %class.Memory* %2 to i8*
  %6 = bitcast %class.Memory* %1 to i8*
  call void @fpga_fifo_pop_16384(i8* %5, i8* %6)
  %7 = load volatile %class.Memory, %class.Memory* %2
  %8 = bitcast %class.Memory* %2 to i8*
  %9 = bitcast %class.Memory* %0 to i8*
  call void @fpga_fifo_push_16384(i8* %8, i8* %9)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %class.Memory, %class.Memory* %1, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %class.Memory, %class.Memory* %0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16384, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_1(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.evmc::evmc_host_interface"(%"class.evmc::evmc_host_interface"* noalias nocapture, %"class.evmc::evmc_host_interface"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"class.evmc::evmc_host_interface"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.evmc::evmc_host_interface"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.evmc::evmc_host_interface"* %2 to i8*
  %6 = bitcast %"class.evmc::evmc_host_interface"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %"class.evmc::evmc_host_interface", %"class.evmc::evmc_host_interface"* %2
  %8 = bitcast %"class.evmc::evmc_host_interface"* %2 to i8*
  %9 = bitcast %"class.evmc::evmc_host_interface"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %"class.evmc::evmc_host_interface", %"class.evmc::evmc_host_interface"* %1, i32 0, i32 0
  %11 = getelementptr inbounds %"class.evmc::evmc_host_interface", %"class.evmc::evmc_host_interface"* %0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_4(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0struct.evmc::evmc_host_context"(%"struct.evmc::evmc_host_context"* noalias nocapture, %"struct.evmc::evmc_host_context"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"struct.evmc::evmc_host_context"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"struct.evmc::evmc_host_context"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"struct.evmc::evmc_host_context"* %2 to i8*
  %6 = bitcast %"struct.evmc::evmc_host_context"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"struct.evmc::evmc_host_context", %"struct.evmc::evmc_host_context"* %2
  %8 = bitcast %"struct.evmc::evmc_host_context"* %2 to i8*
  %9 = bitcast %"struct.evmc::evmc_host_context"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  %10 = bitcast %"struct.evmc::evmc_host_context"* %1 to i8*
  %11 = bitcast %"struct.evmc::evmc_host_context"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0union.instruction_argument(%union.instruction_argument* noalias align 512, %union.instruction_argument* noalias) unnamed_addr #3 {
entry:
  %2 = icmp eq %union.instruction_argument* %0, null
  %3 = icmp eq %union.instruction_argument* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %union.instruction_argument* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_32(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @streamcpy_hls.p0union.instruction_argument(%union.instruction_argument* nonnull align 512 %0, %union.instruction_argument* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0 = getelementptr %union.instruction_argument, %union.instruction_argument* %1, i32 0, i32 0
  %.01 = getelementptr %union.instruction_argument, %union.instruction_argument* %0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_32(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @"streamcpy_hls.p0struct.intx::uint"(%"struct.intx::uint"* align 512 %.01, %"struct.intx::uint"* %.0)
  br label %ret

; <label>:11:                                     ; preds = %8
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %11
  %for.loop.idx8 = phi i64 [ 0, %11 ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr4.gep6 = getelementptr %union.instruction_argument, %union.instruction_argument* %0, i32 0, i32 0, i32 0, i64 %for.loop.idx8
  %12 = bitcast i64* %dst.addr4.gep6 to i8*
  %src.addr5.gep7 = getelementptr %union.instruction_argument, %union.instruction_argument* %1, i32 0, i32 0, i32 0, i64 %for.loop.idx8
  %13 = bitcast i64* %src.addr5.gep7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %13, i64 8, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %10, %7, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0union.instruction_argument(%union.instruction_argument* noalias nocapture align 512, %union.instruction_argument* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %union.instruction_argument
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %union.instruction_argument* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_32(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %union.instruction_argument* %2 to i8*
  %6 = bitcast %union.instruction_argument* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %5, i8* %6)
  %7 = load volatile %union.instruction_argument, %union.instruction_argument* %2
  %8 = bitcast %union.instruction_argument* %2 to i8*
  %9 = bitcast %union.instruction_argument* %0 to i8*
  call void @fpga_fifo_push_32(i8* %8, i8* %9)
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  %10 = bitcast %union.instruction_argument* %1 to i8*
  %11 = bitcast %union.instruction_argument* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 32, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0struct.evmc::evmc_result"(%"struct.evmc::evmc_result"* noalias, %"struct.evmc::evmc_result"* noalias) unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.evmc::evmc_result"* %0, null
  %3 = icmp eq %"struct.evmc::evmc_result"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"struct.evmc::evmc_result"* %0 to i8*
  %6 = bitcast %"struct.evmc::evmc_result"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  %.12.gep30 = getelementptr %"struct.evmc::evmc_result", %"struct.evmc::evmc_result"* %0, i32 0, i32 1
  %7 = bitcast i64* %.12.gep30 to i8*
  %.1.gep31 = getelementptr %"struct.evmc::evmc_result", %"struct.evmc::evmc_result"* %1, i32 0, i32 1
  %8 = bitcast i64* %.1.gep31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 8, i1 false)
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx36 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr27 = getelementptr %"struct.evmc::evmc_result", %"struct.evmc::evmc_result"* %0, i32 0, i32 2, i64 %for.loop.idx36
  %src.addr28 = getelementptr %"struct.evmc::evmc_result", %"struct.evmc::evmc_result"* %1, i32 0, i32 2, i64 %for.loop.idx36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr27, i8* align 1 %src.addr28, i64 1, i1 false)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx36, 1
  %exitcond38 = icmp ne i64 %for.loop.idx.next, 8192
  br i1 %exitcond38, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop
  %.34.gep32 = getelementptr %"struct.evmc::evmc_result", %"struct.evmc::evmc_result"* %0, i32 0, i32 3
  %9 = bitcast i64* %.34.gep32 to i8*
  %.3.gep33 = getelementptr %"struct.evmc::evmc_result", %"struct.evmc::evmc_result"* %1, i32 0, i32 3
  %10 = bitcast i64* %.3.gep33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 8, i1 false)
  %.4 = getelementptr %"struct.evmc::evmc_result", %"struct.evmc::evmc_result"* %1, i32 0, i32 4
  %.45 = getelementptr %"struct.evmc::evmc_result", %"struct.evmc::evmc_result"* %0, i32 0, i32 4
  %11 = getelementptr %"struct.evmc::evmc_result", %"struct.evmc::evmc_result"* %1, i32 0, i32 4, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_20(i8* %11)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %copy.split
  call fastcc void @"streamcpy_hls.p0struct.evmc::evmc_address"(%"struct.evmc::evmc_address"* %.45, %"struct.evmc::evmc_address"* %.4)
  br label %.split

; <label>:14:                                     ; preds = %copy.split
  br label %for.loop7

for.loop7:                                        ; preds = %for.loop7, %14
  %for.loop.idx835 = phi i64 [ 0, %14 ], [ %for.loop.idx8.next, %for.loop7 ]
  %dst.addr1025 = getelementptr %"struct.evmc::evmc_result", %"struct.evmc::evmc_result"* %0, i32 0, i32 4, i32 0, i64 %for.loop.idx835
  %src.addr1126 = getelementptr %"struct.evmc::evmc_result", %"struct.evmc::evmc_result"* %1, i32 0, i32 4, i32 0, i64 %for.loop.idx835
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr1025, i8* align 1 %src.addr1126, i64 1, i1 false)
  %for.loop.idx8.next = add nuw nsw i64 %for.loop.idx835, 1
  %exitcond37 = icmp ne i64 %for.loop.idx8.next, 20
  br i1 %exitcond37, label %for.loop7, label %.split

.split:                                           ; preds = %for.loop7, %13
  br label %for.loop15

for.loop15:                                       ; preds = %for.loop15, %.split
  %for.loop.idx1734 = phi i64 [ 0, %.split ], [ %for.loop.idx17.next, %for.loop15 ]
  %dst.addr1923 = getelementptr %"struct.evmc::evmc_result", %"struct.evmc::evmc_result"* %0, i32 0, i32 5, i64 %for.loop.idx1734
  %src.addr2024 = getelementptr %"struct.evmc::evmc_result", %"struct.evmc::evmc_result"* %1, i32 0, i32 5, i64 %for.loop.idx1734
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr1923, i8* align 1 %src.addr2024, i64 1, i1 false)
  %for.loop.idx17.next = add nuw nsw i64 %for.loop.idx1734, 1
  %exitcond = icmp ne i64 %for.loop.idx17.next, 4
  br i1 %exitcond, label %for.loop15, label %ret

ret:                                              ; preds = %for.loop15, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out(%"struct.evmc::evmc_message"*, %"struct.evmc::evmc_message"* noalias align 512, i8*, i8* noalias readonly align 512, %struct.AdvancedExecutionState*, %struct.AdvancedExecutionState* noalias, %union.instruction_argument*, %union.instruction_argument* noalias align 512, %union.instruction_argument*, %union.instruction_argument* noalias align 512, %"struct.evmc::evmc_result"*, %"struct.evmc::evmc_result"* noalias) unnamed_addr #6 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.evmc::evmc_message"(%"struct.evmc::evmc_message"* %0, %"struct.evmc::evmc_message"* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i8(i8* %2, i8* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0struct.AdvancedExecutionState(%struct.AdvancedExecutionState* %4, %struct.AdvancedExecutionState* %5)
  call fastcc void @onebyonecpy_hls.p0union.instruction_argument(%union.instruction_argument* %6, %union.instruction_argument* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0union.instruction_argument(%union.instruction_argument* %8, %union.instruction_argument* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0struct.evmc::evmc_result"(%"struct.evmc::evmc_result"* %10, %"struct.evmc::evmc_result"* %11)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_execute_contract_fpga_hw(%"struct.evmc::evmc_message"*, i8*, i64, %struct.AdvancedExecutionState*, %union.instruction_argument*, %union.instruction_argument*, %"struct.evmc::evmc_result"*)

define void @execute_contract_fpga_hw_stub_wrapper(%"struct.evmc::evmc_message"*, i8*, i64, %struct.AdvancedExecutionState*, %union.instruction_argument*, %union.instruction_argument*, %"struct.evmc::evmc_result"*) #7 {
entry:
  call void @copy_out(%"struct.evmc::evmc_message"* null, %"struct.evmc::evmc_message"* %0, i8* null, i8* %1, %struct.AdvancedExecutionState* null, %struct.AdvancedExecutionState* %3, %union.instruction_argument* null, %union.instruction_argument* %4, %union.instruction_argument* null, %union.instruction_argument* %5, %"struct.evmc::evmc_result"* null, %"struct.evmc::evmc_result"* %6)
  call void @execute_contract_fpga_hw_stub(%"struct.evmc::evmc_message"* %0, i8* %1, i64 %2, %struct.AdvancedExecutionState* %3, %union.instruction_argument* %4, %union.instruction_argument* %5, %"struct.evmc::evmc_result"* %6)
  call void @copy_in(%"struct.evmc::evmc_message"* null, %"struct.evmc::evmc_message"* %0, i8* null, i8* %1, %struct.AdvancedExecutionState* null, %struct.AdvancedExecutionState* %3, %union.instruction_argument* null, %union.instruction_argument* %4, %union.instruction_argument* null, %union.instruction_argument* %5, %"struct.evmc::evmc_result"* null, %"struct.evmc::evmc_result"* %6)
  ret void
}

declare void @execute_contract_fpga_hw_stub(%"struct.evmc::evmc_message"*, i8*, i64, %struct.AdvancedExecutionState*, %union.instruction_argument*, %union.instruction_argument*, %"struct.evmc::evmc_result"*)

declare i1 @fpga_fifo_not_empty_20(i8*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare i1 @fpga_fifo_not_empty_16384(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_20(i8*, i8*)

declare void @fpga_fifo_pop_16384(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_20(i8*, i8*)

declare void @fpga_fifo_push_16384(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { argmemonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
