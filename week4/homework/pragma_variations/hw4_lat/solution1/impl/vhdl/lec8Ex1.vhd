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
    in_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    in_r_ce0 : OUT STD_LOGIC;
    in_r_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    a : IN STD_LOGIC_VECTOR (15 downto 0);
    b : IN STD_LOGIC_VECTOR (15 downto 0);
    c : IN STD_LOGIC_VECTOR (31 downto 0);
    out_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    out_r_ce0 : OUT STD_LOGIC;
    out_r_we0 : OUT STD_LOGIC;
    out_r_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of lec8Ex1 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "lec8Ex1,hls_ip_2020_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.756000,HLS_SYN_LAT=301,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=5,HLS_SYN_FF=152,HLS_SYN_LUT=194,HLS_VERSION=2020_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv17_27 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000100111";
    constant ap_const_lv6_3C : STD_LOGIC_VECTOR (5 downto 0) := "111100";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal sext_ln22_fu_105_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln22_reg_161 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_fu_113_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_reg_166 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln22_1_fu_125_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln22_1_reg_171 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fu_135_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_reg_179 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal zext_ln17_fu_141_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln17_reg_184 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln14_fu_129_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal mul_ln22_fu_146_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln22_reg_194 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal i_0_reg_94 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal res_fu_113_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal res_fu_113_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal sext_ln31_fu_109_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln22_1_fu_119_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal mul_ln22_fu_146_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln22_fu_146_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln22_fu_151_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);


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


    i_0_reg_94_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                i_0_reg_94 <= i_reg_179;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_94 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_179 <= i_fu_135_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                mul_ln22_reg_194 <= mul_ln22_fu_146_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                res_reg_166 <= res_fu_113_p2;
                sext_ln22_1_reg_171 <= sext_ln22_1_fu_125_p1;
                sext_ln22_reg_161 <= sext_ln22_fu_105_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln14_fu_129_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    zext_ln17_reg_184(5 downto 0) <= zext_ln17_fu_141_p1(5 downto 0);
            end if;
        end if;
    end process;
    zext_ln17_reg_184(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln14_fu_129_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln14_fu_129_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_ln22_1_fu_119_p2 <= std_logic_vector(signed(sext_ln31_fu_109_p1) + signed(ap_const_lv17_27));
    add_ln22_fu_151_p2 <= std_logic_vector(unsigned(mul_ln22_reg_194) + unsigned(res_reg_166));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln14_fu_129_p2)
    begin
        if (((icmp_ln14_fu_129_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln14_fu_129_p2)
    begin
        if (((icmp_ln14_fu_129_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_135_p2 <= std_logic_vector(unsigned(i_0_reg_94) + unsigned(ap_const_lv6_1));
    icmp_ln14_fu_129_p2 <= "1" when (i_0_reg_94 = ap_const_lv6_3C) else "0";
    in_r_address0 <= zext_ln17_fu_141_p1(6 - 1 downto 0);

    in_r_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            in_r_ce0 <= ap_const_logic_1;
        else 
            in_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    mul_ln22_fu_146_p0 <= in_r_q0;
    mul_ln22_fu_146_p1 <= sext_ln22_reg_161(16 - 1 downto 0);
    mul_ln22_fu_146_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(mul_ln22_fu_146_p0) * signed(mul_ln22_fu_146_p1))), 32));
    out_r_address0 <= zext_ln17_reg_184(6 - 1 downto 0);

    out_r_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            out_r_ce0 <= ap_const_logic_1;
        else 
            out_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    out_r_d0 <= std_logic_vector(signed(sext_ln22_1_reg_171) + signed(add_ln22_fu_151_p2));

    out_r_we0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            out_r_we0 <= ap_const_logic_1;
        else 
            out_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    res_fu_113_p0 <= c;
    res_fu_113_p1 <= c;
    res_fu_113_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(res_fu_113_p0) * signed(res_fu_113_p1))), 32));
        sext_ln22_1_fu_125_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln22_1_fu_119_p2),32));

        sext_ln22_fu_105_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(a),32));

        sext_ln31_fu_109_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(b),17));

    zext_ln17_fu_141_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_94),64));
end behav;
