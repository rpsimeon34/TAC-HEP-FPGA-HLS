-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ex2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    A_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    A_ce0 : OUT STD_LOGIC;
    A_q0 : IN STD_LOGIC_VECTOR (4 downto 0);
    B_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    B_ce0 : OUT STD_LOGIC;
    B_q0 : IN STD_LOGIC_VECTOR (4 downto 0);
    C_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    C_ce0 : OUT STD_LOGIC;
    C_we0 : OUT STD_LOGIC;
    C_d0 : OUT STD_LOGIC_VECTOR (5 downto 0) );
end;


architecture behav of ex2 is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "ex2,hls_ip_2020_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7k160t-fbg484-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.238000,HLS_SYN_LAT=85,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=37,HLS_SYN_LUT=120,HLS_VERSION=2020_1}";
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
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_fu_121_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_216 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal zext_ln10_fu_127_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln10_reg_221 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln7_fu_115_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sub_ln10_fu_155_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal sub_ln10_reg_226 : STD_LOGIC_VECTOR (6 downto 0);
    signal j_fu_167_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_reg_234 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln9_fu_161_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_205_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal i_0_reg_81 : STD_LOGIC_VECTOR (2 downto 0);
    signal j_0_reg_92 : STD_LOGIC_VECTOR (2 downto 0);
    signal acc_0_reg_103 : STD_LOGIC_VECTOR (11 downto 0);
    signal sext_ln10_3_fu_187_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln10_1_fu_173_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_fu_131_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_fu_143_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln10_2_fu_139_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln10_3_fu_151_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal zext_ln10_4_fu_178_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln10_fu_182_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);

    component ex2_mac_muladd_5sbkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (4 downto 0);
        din1 : IN STD_LOGIC_VECTOR (4 downto 0);
        din2 : IN STD_LOGIC_VECTOR (11 downto 0);
        dout : OUT STD_LOGIC_VECTOR (11 downto 0) );
    end component;



begin
    ex2_mac_muladd_5sbkb_U1 : component ex2_mac_muladd_5sbkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 5,
        din1_WIDTH => 5,
        din2_WIDTH => 12,
        dout_WIDTH => 12)
    port map (
        din0 => B_q0,
        din1 => A_q0,
        din2 => acc_0_reg_103,
        dout => grp_fu_205_p3);





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


    acc_0_reg_103_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                acc_0_reg_103 <= grp_fu_205_p3;
            elsif (((icmp_ln7_fu_115_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                acc_0_reg_103 <= ap_const_lv12_0;
            end if; 
        end if;
    end process;

    i_0_reg_81_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln9_fu_161_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                i_0_reg_81 <= i_reg_216;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_81 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    j_0_reg_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                j_0_reg_92 <= j_reg_234;
            elsif (((icmp_ln7_fu_115_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_0_reg_92 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_216 <= i_fu_121_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_reg_234 <= j_fu_167_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln7_fu_115_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    sub_ln10_reg_226(6 downto 1) <= sub_ln10_fu_155_p2(6 downto 1);
                    zext_ln10_reg_221(2 downto 0) <= zext_ln10_fu_127_p1(2 downto 0);
            end if;
        end if;
    end process;
    zext_ln10_reg_221(63 downto 3) <= "0000000000000000000000000000000000000000000000000000000000000";
    sub_ln10_reg_226(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln7_fu_115_p2, ap_CS_fsm_state3, icmp_ln9_fu_161_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln7_fu_115_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln9_fu_161_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    A_address0 <= sext_ln10_3_fu_187_p1(6 - 1 downto 0);

    A_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            A_ce0 <= ap_const_logic_1;
        else 
            A_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    B_address0 <= zext_ln10_1_fu_173_p1(3 - 1 downto 0);

    B_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            B_ce0 <= ap_const_logic_1;
        else 
            B_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_address0 <= zext_ln10_reg_221(3 - 1 downto 0);

    C_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            C_ce0 <= ap_const_logic_1;
        else 
            C_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    C_d0 <= acc_0_reg_103(6 - 1 downto 0);

    C_we0_assign_proc : process(ap_CS_fsm_state3, icmp_ln9_fu_161_p2)
    begin
        if (((icmp_ln9_fu_161_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            C_we0 <= ap_const_logic_1;
        else 
            C_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln10_fu_182_p2 <= std_logic_vector(unsigned(sub_ln10_reg_226) + unsigned(zext_ln10_4_fu_178_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);

    ap_done_assign_proc : process(ap_CS_fsm_state2, icmp_ln7_fu_115_p2)
    begin
        if (((icmp_ln7_fu_115_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln7_fu_115_p2)
    begin
        if (((icmp_ln7_fu_115_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_121_p2 <= std_logic_vector(unsigned(i_0_reg_81) + unsigned(ap_const_lv3_1));
    icmp_ln7_fu_115_p2 <= "1" when (i_0_reg_81 = ap_const_lv3_6) else "0";
    icmp_ln9_fu_161_p2 <= "1" when (j_0_reg_92 = ap_const_lv3_6) else "0";
    j_fu_167_p2 <= std_logic_vector(unsigned(j_0_reg_92) + unsigned(ap_const_lv3_1));
        sext_ln10_3_fu_187_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln10_fu_182_p2),64));

    sub_ln10_fu_155_p2 <= std_logic_vector(unsigned(zext_ln10_2_fu_139_p1) - unsigned(zext_ln10_3_fu_151_p1));
    tmp_1_fu_131_p3 <= (i_0_reg_81 & ap_const_lv3_0);
    tmp_2_fu_143_p3 <= (i_0_reg_81 & ap_const_lv1_0);
    zext_ln10_1_fu_173_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_reg_92),64));
    zext_ln10_2_fu_139_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_131_p3),7));
    zext_ln10_3_fu_151_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_143_p3),7));
    zext_ln10_4_fu_178_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_reg_92),7));
    zext_ln10_fu_127_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_81),64));
end behav;
