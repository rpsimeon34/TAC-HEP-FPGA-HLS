set moduleName hw4
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {hw4}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_A int 32 regular {array 6 { 1 } 1 1 }  }
	{ in_B_0 int 32 regular {array 3 { 1 3 } 1 1 }  }
	{ in_B_1 int 32 regular {array 3 { 1 3 } 1 1 }  }
	{ out_r int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_A", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_A","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "in_B_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_B","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "in_B_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_B","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 5,"step" : 1}]}]}]} , 
 	{ "Name" : "out_r", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_A_address0 sc_out sc_lv 3 signal 0 } 
	{ in_A_ce0 sc_out sc_logic 1 signal 0 } 
	{ in_A_q0 sc_in sc_lv 32 signal 0 } 
	{ in_B_0_address0 sc_out sc_lv 2 signal 1 } 
	{ in_B_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_B_0_q0 sc_in sc_lv 32 signal 1 } 
	{ in_B_1_address0 sc_out sc_lv 2 signal 2 } 
	{ in_B_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_B_1_q0 sc_in sc_lv 32 signal 2 } 
	{ out_r sc_out sc_lv 32 signal 3 } 
	{ out_r_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_A_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "in_A", "role": "address0" }} , 
 	{ "name": "in_A_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_A", "role": "ce0" }} , 
 	{ "name": "in_A_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_A", "role": "q0" }} , 
 	{ "name": "in_B_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_B_0", "role": "address0" }} , 
 	{ "name": "in_B_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_B_0", "role": "ce0" }} , 
 	{ "name": "in_B_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_B_0", "role": "q0" }} , 
 	{ "name": "in_B_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_B_1", "role": "address0" }} , 
 	{ "name": "in_B_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_B_1", "role": "ce0" }} , 
 	{ "name": "in_B_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_B_1", "role": "q0" }} , 
 	{ "name": "out_r", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "default" }} , 
 	{ "name": "out_r_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_r", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "hw4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_A", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_B_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_B_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	hw4 {
		in_A {Type I LastRead 1 FirstWrite -1}
		in_B_0 {Type I LastRead 1 FirstWrite -1}
		in_B_1 {Type I LastRead 1 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "13"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_A { ap_memory {  { in_A_address0 mem_address 1 3 }  { in_A_ce0 mem_ce 1 1 }  { in_A_q0 mem_dout 0 32 } } }
	in_B_0 { ap_memory {  { in_B_0_address0 mem_address 1 2 }  { in_B_0_ce0 mem_ce 1 1 }  { in_B_0_q0 mem_dout 0 32 } } }
	in_B_1 { ap_memory {  { in_B_1_address0 mem_address 1 2 }  { in_B_1_ce0 mem_ce 1 1 }  { in_B_1_q0 mem_dout 0 32 } } }
	out_r { ap_vld {  { out_r out_data 1 32 }  { out_r_ap_vld out_vld 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
