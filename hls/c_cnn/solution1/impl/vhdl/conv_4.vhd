-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity conv_4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_r_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    in_r_ce0 : OUT STD_LOGIC;
    in_r_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    output_r_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    output_r_ce0 : OUT STD_LOGIC;
    output_r_we0 : OUT STD_LOGIC;
    output_r_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of conv_4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv7_54 : STD_LOGIC_VECTOR (6 downto 0) := "1010100";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv7_78 : STD_LOGIC_VECTOR (6 downto 0) := "1111000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal c4_weight_address0 : STD_LOGIC_VECTOR (13 downto 0);
    signal c4_weight_ce0 : STD_LOGIC;
    signal c4_weight_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal c4_bias_address0 : STD_LOGIC_VECTOR (6 downto 0);
    signal c4_bias_ce0 : STD_LOGIC;
    signal c4_bias_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal indvar_flatten8_reg_172 : STD_LOGIC_VECTOR (6 downto 0);
    signal cin_reg_183 : STD_LOGIC_VECTOR (6 downto 0);
    signal indvar_flatten_reg_194 : STD_LOGIC_VECTOR (1 downto 0);
    signal y_reg_205 : STD_LOGIC_VECTOR (0 downto 0);
    signal output_buffer_2_reg_216 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_reg_228 : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_next7_fu_289_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal indvar_flatten_next7_reg_574 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal exitcond_flatten_fu_295_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten_reg_579 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten7_fu_283_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_32_mid2_fu_337_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_32_mid2_reg_587 : STD_LOGIC_VECTOR (14 downto 0);
    signal c4_bias_load_mid2_v_fu_345_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal c4_bias_load_mid2_v_reg_592 : STD_LOGIC_VECTOR (6 downto 0);
    signal c4_bias_load_reg_603 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal h_cast9_mid2_cast_fu_405_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal h_cast9_mid2_cast_reg_608 : STD_LOGIC_VECTOR (6 downto 0);
    signal h_mid2_fu_409_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_mid2_reg_613 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten8_fu_417_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten8_reg_619 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state4_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal indvar_flatten_next8_fu_423_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp4_mid2_v_v_fu_459_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp4_mid2_v_v_reg_628 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp1_cast_mid2_v_v_fu_488_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp1_cast_mid2_v_v_reg_633 : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_next_fu_541_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_fu_240_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal indvar_flatten_next6_fu_564_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state4 : STD_LOGIC;
    signal indvar_flatten6_reg_112 : STD_LOGIC_VECTOR (6 downto 0);
    signal cout_reg_123 : STD_LOGIC_VECTOR (6 downto 0);
    signal indvar_flatten7_reg_134 : STD_LOGIC_VECTOR (1 downto 0);
    signal h_reg_146 : STD_LOGIC_VECTOR (0 downto 0);
    signal w_reg_158 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_cin_phi_fu_187_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_phi_mux_y_phi_fu_209_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_x_phi_fu_232_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal c4_bias_load_mid2_fu_353_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_39_fu_511_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_41_fu_530_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_36_fu_553_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_240_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_42_fu_246_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_shl_fu_253_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_shl1_fu_265_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl_cast_fu_261_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_shl1_cast_fu_273_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal cout_s_fu_301_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_shl_mid1_fu_307_p3 : STD_LOGIC_VECTOR (13 downto 0);
    signal p_shl1_mid1_fu_319_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl_cast_mid1_fu_315_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_shl1_cast_mid1_fu_327_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_32_mid1_fu_331_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_32_fu_277_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal not_exitcond_flatten_4_fu_358_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_exitcond_flatten_5_fu_375_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_not_fu_386_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal w_mid_fu_369_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_1_fu_392_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_cast9_mid_fu_380_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_cast9_mid2_fu_397_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal h_mid_fu_363_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten2_fu_429_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal not_exitcond_flatten_fu_435_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cin_s_fu_453_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp4_mid2_v_fu_467_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal y_not_fu_476_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_mid_fu_447_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal y_1_fu_482_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal y_mid_fu_441_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp1_cast_mid2_v_fu_496_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp1_cast_mid2_fu_501_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_38_fu_505_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp5_cast_fu_516_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp4_mid2_fu_471_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_40_fu_520_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal tmp_55_cast_fu_526_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal indvar_flatten_op_fu_535_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_35_fu_549_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal indvar_flatten23_op_fu_558_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component top_net_fadd_32nsbkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component top_net_fmul_32nscud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component conv_4_c4_weight IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (13 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component conv_4_c4_bias IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (6 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    c4_weight_U : component conv_4_c4_weight
    generic map (
        DataWidth => 32,
        AddressRange => 10080,
        AddressWidth => 14)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => c4_weight_address0,
        ce0 => c4_weight_ce0,
        q0 => c4_weight_q0);

    c4_bias_U : component conv_4_c4_bias
    generic map (
        DataWidth => 32,
        AddressRange => 84,
        AddressWidth => 7)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => c4_bias_address0,
        ce0 => c4_bias_ce0,
        q0 => c4_bias_q0);

    top_net_fadd_32nsbkb_U29 : component top_net_fadd_32nsbkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        din0 => grp_fu_240_p0,
        din1 => output_buffer_2_reg_216,
        dout => grp_fu_240_p2);

    top_net_fmul_32nscud_U30 : component top_net_fmul_32nscud
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        din0 => in_r_q0,
        din1 => c4_weight_q0,
        dout => tmp_42_fu_246_p2);





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


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state4) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state4) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state4);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    cin_reg_183_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten8_reg_619 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                cin_reg_183 <= tmp4_mid2_v_v_reg_628;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                cin_reg_183 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    cout_reg_123_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                cout_reg_123 <= c4_bias_load_mid2_v_reg_592;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                cout_reg_123 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    h_reg_146_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                h_reg_146 <= h_mid2_reg_613;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                h_reg_146 <= ap_const_lv1_0;
            end if; 
        end if;
    end process;

    indvar_flatten6_reg_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                indvar_flatten6_reg_112 <= indvar_flatten_next7_reg_574;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                indvar_flatten6_reg_112 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    indvar_flatten7_reg_134_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                indvar_flatten7_reg_134 <= indvar_flatten_next6_fu_564_p3;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                indvar_flatten7_reg_134 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    indvar_flatten8_reg_172_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten8_fu_417_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                indvar_flatten8_reg_172 <= indvar_flatten_next8_fu_423_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                indvar_flatten8_reg_172 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_194_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten8_fu_417_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                indvar_flatten_reg_194 <= indvar_flatten_next_fu_541_p3;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                indvar_flatten_reg_194 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    output_buffer_2_reg_216_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten8_reg_619 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                output_buffer_2_reg_216 <= grp_fu_240_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                output_buffer_2_reg_216 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    w_reg_158_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                w_reg_158 <= ap_const_lv1_1;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                w_reg_158 <= ap_const_lv1_0;
            end if; 
        end if;
    end process;

    x_reg_228_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten8_reg_619 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                x_reg_228 <= ap_const_lv1_1;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                x_reg_228 <= ap_const_lv1_0;
            end if; 
        end if;
    end process;

    y_reg_205_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten8_reg_619 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                y_reg_205 <= tmp1_cast_mid2_v_v_reg_633;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                y_reg_205 <= ap_const_lv1_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten7_fu_283_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                c4_bias_load_mid2_v_reg_592 <= c4_bias_load_mid2_v_fu_345_p3;
                exitcond_flatten_reg_579 <= exitcond_flatten_fu_295_p2;
                    tmp_32_mid2_reg_587(14 downto 3) <= tmp_32_mid2_fu_337_p3(14 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                c4_bias_load_reg_603 <= c4_bias_q0;
                    h_cast9_mid2_cast_reg_608(0) <= h_cast9_mid2_cast_fu_405_p1(0);
                h_mid2_reg_613 <= h_mid2_fu_409_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                exitcond_flatten8_reg_619 <= exitcond_flatten8_fu_417_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                indvar_flatten_next7_reg_574 <= indvar_flatten_next7_fu_289_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten8_fu_417_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp1_cast_mid2_v_v_reg_633 <= tmp1_cast_mid2_v_v_fu_488_p3;
                tmp4_mid2_v_v_reg_628 <= tmp4_mid2_v_v_fu_459_p3;
            end if;
        end if;
    end process;
    tmp_32_mid2_reg_587(2 downto 0) <= "000";
    h_cast9_mid2_cast_reg_608(6 downto 1) <= "000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond_flatten7_fu_283_p2, exitcond_flatten8_fu_417_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond_flatten7_fu_283_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((exitcond_flatten8_fu_417_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((exitcond_flatten8_fu_417_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(3);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state6 <= ap_CS_fsm(4);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state4_assign_proc : process(exitcond_flatten8_fu_417_p2)
    begin
        if ((exitcond_flatten8_fu_417_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state4 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state4 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond_flatten7_fu_283_p2)
    begin
        if ((((exitcond_flatten7_fu_283_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_cin_phi_fu_187_p4_assign_proc : process(cin_reg_183, exitcond_flatten8_reg_619, ap_CS_fsm_pp0_stage0, tmp4_mid2_v_v_reg_628, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((exitcond_flatten8_reg_619 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_cin_phi_fu_187_p4 <= tmp4_mid2_v_v_reg_628;
        else 
            ap_phi_mux_cin_phi_fu_187_p4 <= cin_reg_183;
        end if; 
    end process;


    ap_phi_mux_x_phi_fu_232_p4_assign_proc : process(x_reg_228, exitcond_flatten8_reg_619, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((exitcond_flatten8_reg_619 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_x_phi_fu_232_p4 <= ap_const_lv1_1;
        else 
            ap_phi_mux_x_phi_fu_232_p4 <= x_reg_228;
        end if; 
    end process;


    ap_phi_mux_y_phi_fu_209_p4_assign_proc : process(y_reg_205, exitcond_flatten8_reg_619, ap_CS_fsm_pp0_stage0, tmp1_cast_mid2_v_v_reg_633, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((exitcond_flatten8_reg_619 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_y_phi_fu_209_p4 <= tmp1_cast_mid2_v_v_reg_633;
        else 
            ap_phi_mux_y_phi_fu_209_p4 <= y_reg_205;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond_flatten7_fu_283_p2)
    begin
        if (((exitcond_flatten7_fu_283_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    c4_bias_address0 <= c4_bias_load_mid2_fu_353_p1(7 - 1 downto 0);

    c4_bias_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            c4_bias_ce0 <= ap_const_logic_1;
        else 
            c4_bias_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    c4_bias_load_mid2_fu_353_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c4_bias_load_mid2_v_fu_345_p3),64));
    c4_bias_load_mid2_v_fu_345_p3 <= 
        cout_s_fu_301_p2 when (exitcond_flatten_fu_295_p2(0) = '1') else 
        cout_reg_123;
    c4_weight_address0 <= tmp_41_fu_530_p1(14 - 1 downto 0);

    c4_weight_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            c4_weight_ce0 <= ap_const_logic_1;
        else 
            c4_weight_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    cin_s_fu_453_p2 <= std_logic_vector(unsigned(ap_phi_mux_cin_phi_fu_187_p4) + unsigned(ap_const_lv7_1));
    cout_s_fu_301_p2 <= std_logic_vector(unsigned(cout_reg_123) + unsigned(ap_const_lv7_1));
    exitcond_flatten2_fu_429_p2 <= "1" when (indvar_flatten_reg_194 = ap_const_lv2_1) else "0";
    exitcond_flatten7_fu_283_p2 <= "1" when (indvar_flatten6_reg_112 = ap_const_lv7_54) else "0";
    exitcond_flatten8_fu_417_p2 <= "1" when (indvar_flatten8_reg_172 = ap_const_lv7_78) else "0";
    exitcond_flatten_fu_295_p2 <= "1" when (indvar_flatten7_reg_134 = ap_const_lv2_1) else "0";

    grp_fu_240_p0_assign_proc : process(c4_bias_load_reg_603, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_CS_fsm_state6, ap_block_pp0_stage0, tmp_42_fu_246_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            grp_fu_240_p0 <= c4_bias_load_reg_603;
        elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            grp_fu_240_p0 <= tmp_42_fu_246_p2;
        else 
            grp_fu_240_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    h_1_fu_392_p2 <= (h_not_fu_386_p2 or exitcond_flatten_reg_579);
    h_cast9_mid2_cast_fu_405_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(h_cast9_mid2_fu_397_p3),7));
    h_cast9_mid2_fu_397_p3 <= 
        h_1_fu_392_p2 when (w_mid_fu_369_p2(0) = '1') else 
        h_cast9_mid_fu_380_p2;
    h_cast9_mid_fu_380_p2 <= (not_exitcond_flatten_5_fu_375_p2 and h_reg_146);
    h_mid2_fu_409_p3 <= 
        h_1_fu_392_p2 when (w_mid_fu_369_p2(0) = '1') else 
        h_mid_fu_363_p2;
    h_mid_fu_363_p2 <= (not_exitcond_flatten_4_fu_358_p2 and h_reg_146);
    h_not_fu_386_p2 <= (h_reg_146 xor ap_const_lv1_1);
    in_r_address0 <= tmp_39_fu_511_p1(7 - 1 downto 0);

    in_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            in_r_ce0 <= ap_const_logic_1;
        else 
            in_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    indvar_flatten23_op_fu_558_p2 <= std_logic_vector(unsigned(indvar_flatten7_reg_134) + unsigned(ap_const_lv2_1));
    indvar_flatten_next6_fu_564_p3 <= 
        ap_const_lv2_1 when (exitcond_flatten_reg_579(0) = '1') else 
        indvar_flatten23_op_fu_558_p2;
    indvar_flatten_next7_fu_289_p2 <= std_logic_vector(unsigned(indvar_flatten6_reg_112) + unsigned(ap_const_lv7_1));
    indvar_flatten_next8_fu_423_p2 <= std_logic_vector(unsigned(indvar_flatten8_reg_172) + unsigned(ap_const_lv7_1));
    indvar_flatten_next_fu_541_p3 <= 
        ap_const_lv2_1 when (exitcond_flatten2_fu_429_p2(0) = '1') else 
        indvar_flatten_op_fu_535_p2;
    indvar_flatten_op_fu_535_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_194) + unsigned(ap_const_lv2_1));
    not_exitcond_flatten_4_fu_358_p2 <= (exitcond_flatten_reg_579 xor ap_const_lv1_1);
    not_exitcond_flatten_5_fu_375_p2 <= (exitcond_flatten_reg_579 xor ap_const_lv1_1);
    not_exitcond_flatten_fu_435_p2 <= (exitcond_flatten2_fu_429_p2 xor ap_const_lv1_1);
    output_r_address0 <= tmp_36_fu_553_p1(7 - 1 downto 0);

    output_r_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            output_r_ce0 <= ap_const_logic_1;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    output_r_d0 <= grp_fu_240_p2;

    output_r_we0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            output_r_we0 <= ap_const_logic_1;
        else 
            output_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    p_shl1_cast_fu_273_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl1_fu_265_p3),15));
    p_shl1_cast_mid1_fu_327_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl1_mid1_fu_319_p3),15));
    p_shl1_fu_265_p3 <= (cout_reg_123 & ap_const_lv3_0);
    p_shl1_mid1_fu_319_p3 <= (cout_s_fu_301_p2 & ap_const_lv3_0);
    p_shl_cast_fu_261_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl_fu_253_p3),15));
    p_shl_cast_mid1_fu_315_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl_mid1_fu_307_p3),15));
    p_shl_fu_253_p3 <= (cout_reg_123 & ap_const_lv7_0);
    p_shl_mid1_fu_307_p3 <= (cout_s_fu_301_p2 & ap_const_lv7_0);
    tmp1_cast_mid2_fu_501_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp1_cast_mid2_v_fu_496_p2),7));
    tmp1_cast_mid2_v_fu_496_p2 <= (tmp1_cast_mid2_v_v_fu_488_p3 xor h_mid2_reg_613);
    tmp1_cast_mid2_v_v_fu_488_p3 <= 
        y_1_fu_482_p2 when (x_mid_fu_447_p2(0) = '1') else 
        y_mid_fu_441_p2;
    tmp4_mid2_fu_471_p2 <= std_logic_vector(unsigned(tmp4_mid2_v_fu_467_p1) + unsigned(tmp_32_mid2_reg_587));
    tmp4_mid2_v_fu_467_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp4_mid2_v_v_fu_459_p3),15));
    tmp4_mid2_v_v_fu_459_p3 <= 
        cin_s_fu_453_p2 when (exitcond_flatten2_fu_429_p2(0) = '1') else 
        ap_phi_mux_cin_phi_fu_187_p4;
    tmp5_cast_fu_516_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp1_cast_mid2_v_v_fu_488_p3),15));
    tmp_32_fu_277_p2 <= std_logic_vector(unsigned(p_shl_cast_fu_261_p1) - unsigned(p_shl1_cast_fu_273_p1));
    tmp_32_mid1_fu_331_p2 <= std_logic_vector(unsigned(p_shl_cast_mid1_fu_315_p1) - unsigned(p_shl1_cast_mid1_fu_327_p1));
    tmp_32_mid2_fu_337_p3 <= 
        tmp_32_mid1_fu_331_p2 when (exitcond_flatten_fu_295_p2(0) = '1') else 
        tmp_32_fu_277_p2;
    tmp_35_fu_549_p2 <= std_logic_vector(unsigned(c4_bias_load_mid2_v_reg_592) + unsigned(h_cast9_mid2_cast_reg_608));
    tmp_36_fu_553_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_35_fu_549_p2),64));
    tmp_38_fu_505_p2 <= std_logic_vector(unsigned(tmp4_mid2_v_v_fu_459_p3) + unsigned(tmp1_cast_mid2_fu_501_p1));
    tmp_39_fu_511_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_38_fu_505_p2),64));
    tmp_40_fu_520_p2 <= std_logic_vector(unsigned(tmp5_cast_fu_516_p1) + unsigned(tmp4_mid2_fu_471_p2));
    tmp_41_fu_530_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_55_cast_fu_526_p1),64));
        tmp_55_cast_fu_526_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_40_fu_520_p2),32));

    w_mid_fu_369_p2 <= (w_reg_158 and not_exitcond_flatten_4_fu_358_p2);
    x_mid_fu_447_p2 <= (not_exitcond_flatten_fu_435_p2 and ap_phi_mux_x_phi_fu_232_p4);
    y_1_fu_482_p2 <= (y_not_fu_476_p2 or exitcond_flatten2_fu_429_p2);
    y_mid_fu_441_p2 <= (not_exitcond_flatten_fu_435_p2 and ap_phi_mux_y_phi_fu_209_p4);
    y_not_fu_476_p2 <= (ap_phi_mux_y_phi_fu_209_p4 xor ap_const_lv1_1);
end behav;
