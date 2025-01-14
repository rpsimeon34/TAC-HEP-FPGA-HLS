-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lec8Ex1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_0_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    in_0_ce0 : OUT STD_LOGIC;
    in_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    in_1_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    in_1_ce0 : OUT STD_LOGIC;
    in_1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    a : IN STD_LOGIC_VECTOR (15 downto 0);
    b : IN STD_LOGIC_VECTOR (15 downto 0);
    c : IN STD_LOGIC_VECTOR (31 downto 0);
    out_0_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    out_0_ce0 : OUT STD_LOGIC;
    out_0_we0 : OUT STD_LOGIC;
    out_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_1_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    out_1_ce0 : OUT STD_LOGIC;
    out_1_we0 : OUT STD_LOGIC;
    out_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_2_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    out_2_ce0 : OUT STD_LOGIC;
    out_2_we0 : OUT STD_LOGIC;
    out_2_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of lec8Ex1 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "lec8Ex1,hls_ip_2020_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.130000,HLS_SYN_LAT=181,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=5,HLS_SYN_FF=179,HLS_SYN_LUT=320,HLS_VERSION=2020_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv17_27 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000100111";
    constant ap_const_lv6_3C : STD_LOGIC_VECTOR (5 downto 0) := "111100";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv6_1E : STD_LOGIC_VECTOR (5 downto 0) := "011110";
    constant ap_const_lv6_22 : STD_LOGIC_VECTOR (5 downto 0) := "100010";
    constant ap_const_lv13_67 : STD_LOGIC_VECTOR (12 downto 0) := "0000001100111";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv6_14 : STD_LOGIC_VECTOR (5 downto 0) := "010100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal sext_ln24_fu_181_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln24_reg_310 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_fu_189_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_reg_315 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln24_1_fu_201_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln24_1_reg_320 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_211_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_reg_328 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln19_fu_217_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln19_reg_333 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln17_fu_205_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln26_fu_243_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln26_reg_348 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_reg_353 : STD_LOGIC_VECTOR (1 downto 0);
    signal mul_ln24_fu_266_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln24_reg_357 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal select_ln17_fu_302_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal i_0_reg_147 : STD_LOGIC_VECTOR (5 downto 0);
    signal phi_mul_reg_158 : STD_LOGIC_VECTOR (12 downto 0);
    signal phi_urem_reg_169 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln19_fu_237_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln26_fu_283_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal y_fu_275_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_fu_189_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_fu_189_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln34_fu_185_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln24_1_fu_195_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln19_fu_223_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln19_fu_229_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal mul_ln24_fu_266_p0 : STD_LOGIC_VECTOR (15 downto 0);
    signal x_fu_259_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln24_fu_271_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln17_1_fu_290_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln17_1_fu_296_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_0_reg_147_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                i_0_reg_147 <= i_reg_328;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_147 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    phi_mul_reg_158_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                phi_mul_reg_158 <= add_ln26_reg_348;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                phi_mul_reg_158 <= ap_const_lv13_0;
            end if; 
        end if;
    end process;

    phi_urem_reg_169_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                phi_urem_reg_169 <= select_ln17_fu_302_p3;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                phi_urem_reg_169 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln17_fu_205_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                add_ln26_reg_348 <= add_ln26_fu_243_p2;
                icmp_ln19_reg_333 <= icmp_ln19_fu_217_p2;
                tmp_reg_353 <= phi_mul_reg_158(12 downto 11);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_328 <= i_fu_211_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                mul_ln24_reg_357 <= mul_ln24_fu_266_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                res_reg_315 <= res_fu_189_p2;
                sext_ln24_1_reg_320 <= sext_ln24_1_fu_201_p1;
                sext_ln24_reg_310 <= sext_ln24_fu_181_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln17_fu_205_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln17_fu_205_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    add_ln17_1_fu_290_p2 <= std_logic_vector(unsigned(phi_urem_reg_169) + unsigned(ap_const_lv6_1));
    add_ln19_fu_223_p2 <= std_logic_vector(unsigned(i_0_reg_147) + unsigned(ap_const_lv6_22));
    add_ln24_1_fu_195_p2 <= std_logic_vector(signed(sext_ln34_fu_185_p1) + signed(ap_const_lv17_27));
    add_ln24_fu_271_p2 <= std_logic_vector(unsigned(mul_ln24_reg_357) + unsigned(res_reg_315));
    add_ln26_fu_243_p2 <= std_logic_vector(unsigned(phi_mul_reg_158) + unsigned(ap_const_lv13_67));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln17_fu_205_p2)
    begin
        if (((icmp_ln17_fu_205_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln17_fu_205_p2)
    begin
        if (((icmp_ln17_fu_205_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_211_p2 <= std_logic_vector(unsigned(i_0_reg_147) + unsigned(ap_const_lv6_1));
    icmp_ln17_1_fu_296_p2 <= "1" when (unsigned(add_ln17_1_fu_290_p2) < unsigned(ap_const_lv6_14)) else "0";
    icmp_ln17_fu_205_p2 <= "1" when (i_0_reg_147 = ap_const_lv6_3C) else "0";
    icmp_ln19_fu_217_p2 <= "1" when (unsigned(i_0_reg_147) < unsigned(ap_const_lv6_1E)) else "0";
    in_0_address0 <= zext_ln19_fu_237_p1(5 - 1 downto 0);

    in_0_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            in_0_ce0 <= ap_const_logic_1;
        else 
            in_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    in_1_address0 <= zext_ln19_fu_237_p1(5 - 1 downto 0);

    in_1_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            in_1_ce0 <= ap_const_logic_1;
        else 
            in_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    mul_ln24_fu_266_p0 <= sext_ln24_reg_310(16 - 1 downto 0);
    mul_ln24_fu_266_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(mul_ln24_fu_266_p0) * signed(x_fu_259_p3))), 32));
    out_0_address0 <= zext_ln26_fu_283_p1(5 - 1 downto 0);

    out_0_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            out_0_ce0 <= ap_const_logic_1;
        else 
            out_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_0_d0 <= y_fu_275_p2;

    out_0_we0_assign_proc : process(tmp_reg_353, ap_CS_fsm_state4)
    begin
        if (((tmp_reg_353 = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            out_0_we0 <= ap_const_logic_1;
        else 
            out_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    out_1_address0 <= zext_ln26_fu_283_p1(5 - 1 downto 0);

    out_1_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            out_1_ce0 <= ap_const_logic_1;
        else 
            out_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_1_d0 <= y_fu_275_p2;

    out_1_we0_assign_proc : process(tmp_reg_353, ap_CS_fsm_state4)
    begin
        if (((tmp_reg_353 = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            out_1_we0 <= ap_const_logic_1;
        else 
            out_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    out_2_address0 <= zext_ln26_fu_283_p1(5 - 1 downto 0);

    out_2_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            out_2_ce0 <= ap_const_logic_1;
        else 
            out_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_2_d0 <= y_fu_275_p2;

    out_2_we0_assign_proc : process(tmp_reg_353, ap_CS_fsm_state4)
    begin
        if ((not((tmp_reg_353 = ap_const_lv2_0)) and not((tmp_reg_353 = ap_const_lv2_1)) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            out_2_we0 <= ap_const_logic_1;
        else 
            out_2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    res_fu_189_p0 <= c;
    res_fu_189_p1 <= c;
    res_fu_189_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(res_fu_189_p0) * signed(res_fu_189_p1))), 32));
    select_ln17_fu_302_p3 <= 
        add_ln17_1_fu_290_p2 when (icmp_ln17_1_fu_296_p2(0) = '1') else 
        ap_const_lv6_0;
    select_ln19_fu_229_p3 <= 
        i_0_reg_147 when (icmp_ln19_fu_217_p2(0) = '1') else 
        add_ln19_fu_223_p2;
        sext_ln24_1_fu_201_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln24_1_fu_195_p2),32));

        sext_ln24_fu_181_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(a),32));

        sext_ln34_fu_185_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(b),17));

    x_fu_259_p3 <= 
        in_0_q0 when (icmp_ln19_reg_333(0) = '1') else 
        in_1_q0;
    y_fu_275_p2 <= std_logic_vector(unsigned(add_ln24_fu_271_p2) + unsigned(sext_ln24_1_reg_320));
    zext_ln19_fu_237_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln19_fu_229_p3),64));
    zext_ln26_fu_283_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(phi_urem_reg_169),64));
end behav;
