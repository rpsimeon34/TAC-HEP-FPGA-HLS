set moduleName ex4
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 1
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {ex4}
set C_modelType { void 0 }
set C_modelArgList {
	{ A_A1 int 32 regular  }
	{ A_A2 int 32 regular  }
	{ A_A3 int 32 regular  }
	{ A_A4 int 32 regular  }
	{ A_A5 int 32 regular  }
	{ A_A6 int 32 regular  }
	{ A_A7 int 32 regular  }
	{ A_A8 int 32 regular  }
	{ A_A9 int 32 regular  }
	{ A_A10 int 32 regular  }
	{ B int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_A1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A.A1","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "A_A2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A.A2","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "A_A3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A.A3","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "A_A4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A.A4","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "A_A5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A.A5","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "A_A6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A.A6","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "A_A7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A.A7","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "A_A8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A.A8","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "A_A9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A.A9","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "A_A10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A.A10","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "B", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "B","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_A1 sc_in sc_lv 32 signal 0 } 
	{ A_A2 sc_in sc_lv 32 signal 1 } 
	{ A_A3 sc_in sc_lv 32 signal 2 } 
	{ A_A4 sc_in sc_lv 32 signal 3 } 
	{ A_A5 sc_in sc_lv 32 signal 4 } 
	{ A_A6 sc_in sc_lv 32 signal 5 } 
	{ A_A7 sc_in sc_lv 32 signal 6 } 
	{ A_A8 sc_in sc_lv 32 signal 7 } 
	{ A_A9 sc_in sc_lv 32 signal 8 } 
	{ A_A10 sc_in sc_lv 32 signal 9 } 
	{ B sc_out sc_lv 32 signal 10 } 
	{ B_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_A1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_A1", "role": "default" }} , 
 	{ "name": "A_A2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_A2", "role": "default" }} , 
 	{ "name": "A_A3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_A3", "role": "default" }} , 
 	{ "name": "A_A4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_A4", "role": "default" }} , 
 	{ "name": "A_A5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_A5", "role": "default" }} , 
 	{ "name": "A_A6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_A6", "role": "default" }} , 
 	{ "name": "A_A7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_A7", "role": "default" }} , 
 	{ "name": "A_A8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_A8", "role": "default" }} , 
 	{ "name": "A_A9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_A9", "role": "default" }} , 
 	{ "name": "A_A10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_A10", "role": "default" }} , 
 	{ "name": "B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "default" }} , 
 	{ "name": "B_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ex4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A_A1", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_A2", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_A3", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_A4", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_A5", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_A6", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_A7", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_A8", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_A9", "Type" : "None", "Direction" : "I"},
			{"Name" : "A_A10", "Type" : "None", "Direction" : "I"},
			{"Name" : "B", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	ex4 {
		A_A1 {Type I LastRead 0 FirstWrite -1}
		A_A2 {Type I LastRead 0 FirstWrite -1}
		A_A3 {Type I LastRead 0 FirstWrite -1}
		A_A4 {Type I LastRead 0 FirstWrite -1}
		A_A5 {Type I LastRead 0 FirstWrite -1}
		A_A6 {Type I LastRead 0 FirstWrite -1}
		A_A7 {Type I LastRead 0 FirstWrite -1}
		A_A8 {Type I LastRead 0 FirstWrite -1}
		A_A9 {Type I LastRead 0 FirstWrite -1}
		A_A10 {Type I LastRead 0 FirstWrite -1}
		B {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A_A1 { ap_none {  { A_A1 in_data 0 32 } } }
	A_A2 { ap_none {  { A_A2 in_data 0 32 } } }
	A_A3 { ap_none {  { A_A3 in_data 0 32 } } }
	A_A4 { ap_none {  { A_A4 in_data 0 32 } } }
	A_A5 { ap_none {  { A_A5 in_data 0 32 } } }
	A_A6 { ap_none {  { A_A6 in_data 0 32 } } }
	A_A7 { ap_none {  { A_A7 in_data 0 32 } } }
	A_A8 { ap_none {  { A_A8 in_data 0 32 } } }
	A_A9 { ap_none {  { A_A9 in_data 0 32 } } }
	A_A10 { ap_none {  { A_A10 in_data 0 32 } } }
	B { ap_vld {  { B out_data 1 32 }  { B_ap_vld out_vld 1 1 } } }
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
