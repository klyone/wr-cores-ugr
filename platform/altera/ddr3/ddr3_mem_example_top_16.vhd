--Legal Notice: (C)2012 Altera Corporation. All rights reserved.  Your
--use of Altera Corporation's design tools, logic functions and other
--software and tools, and its AMPP partner logic functions, and any
--output files any of the foregoing (including device programming or
--simulation files), and any associated documentation or information are
--expressly subject to the terms and conditions of the Altera Program
--License Subscription Agreement or other applicable license agreement,
--including, without limitation, that your use is for the sole purpose
--of programming logic devices manufactured by Altera and sold by Altera
--or its authorized distributors.  Please refer to the applicable
--agreement for further details.


-- turn off superfluous VHDL processor warnings 
-- altera message_level Level1 
-- altera message_off 10034 10035 10036 10037 10230 10240 10030 

library altera;
use altera.altera_europa_support_lib.all;

library altera_mf;
use altera_mf.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- megafunction wizard: %DDR3 SDRAM High Performance Controller v11.1%
--GENERATION: XML
--Generated by DDR3 SDRAM High Performance Controller 11.1
--IPFS_FILES:
--RELATED_FILES:
--<< MEGAWIZARD PARSE FILE DDR311.1
--.
--<< START MEGAWIZARD INSERT MODULE

entity ddr3_mem_example_top is 
        port (
              -- inputs:
                 signal clock_source : IN STD_LOGIC;
                 signal global_reset_n : IN STD_LOGIC;

              -- outputs:
                 signal mem_addr : OUT STD_LOGIC_VECTOR (12 DOWNTO 0);
                 signal mem_ba : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
                 signal mem_cas_n : OUT STD_LOGIC;
                 signal mem_cke : OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
                 signal mem_clk : INOUT STD_LOGIC_VECTOR (0 DOWNTO 0);
                 signal mem_clk_n : INOUT STD_LOGIC_VECTOR (0 DOWNTO 0);
                 signal mem_cs_n : OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
                 signal mem_dm : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
                 signal mem_dq : INOUT STD_LOGIC_VECTOR (15 DOWNTO 0);
                 signal mem_dqs : INOUT STD_LOGIC_VECTOR (1 DOWNTO 0);
                 signal mem_dqsn : INOUT STD_LOGIC_VECTOR (1 DOWNTO 0);
                 signal mem_odt : OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
                 signal mem_ras_n : OUT STD_LOGIC;
                 signal mem_reset_n : OUT STD_LOGIC;
                 signal mem_we_n : OUT STD_LOGIC;
                 signal pnf : OUT STD_LOGIC;
                 signal pnf_per_byte : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
                 signal test_complete : OUT STD_LOGIC;
                 signal test_status : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
              );
end entity ddr3_mem_example_top;


architecture europa of ddr3_mem_example_top is
  component ddr3_mem is
PORT (
    signal mem_cke : OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
        signal mem_dqsn : INOUT STD_LOGIC_VECTOR (1 DOWNTO 0);
        signal mem_addr : OUT STD_LOGIC_VECTOR (12 DOWNTO 0);
        signal mem_dm : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
        signal aux_full_rate_clk : OUT STD_LOGIC;
        signal local_init_done : OUT STD_LOGIC;
        signal mem_dq : INOUT STD_LOGIC_VECTOR (15 DOWNTO 0);
        signal mem_ras_n : OUT STD_LOGIC;
        signal dbg_rd_data : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
        signal mem_cs_n : OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
        signal phy_clk : OUT STD_LOGIC;
        signal mem_ba : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
        signal dbg_waitrequest : OUT STD_LOGIC;
        signal mem_reset_n : OUT STD_LOGIC;
        signal dqs_delay_ctrl_export : OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
        signal aux_half_rate_clk : OUT STD_LOGIC;
        signal local_rdata : OUT STD_LOGIC_VECTOR (63 DOWNTO 0);
        signal local_rdata_valid : OUT STD_LOGIC;
        signal mem_we_n : OUT STD_LOGIC;
        signal reset_phy_clk_n : OUT STD_LOGIC;
        signal local_ready : OUT STD_LOGIC;
        signal mem_odt : OUT STD_LOGIC_VECTOR (0 DOWNTO 0);
        signal mem_cas_n : OUT STD_LOGIC;
        signal dll_reference_clk : OUT STD_LOGIC;
        signal mem_clk : INOUT STD_LOGIC_VECTOR (0 DOWNTO 0);
        signal local_refresh_ack : OUT STD_LOGIC;
        signal reset_request_n : OUT STD_LOGIC;
        signal mem_dqs : INOUT STD_LOGIC_VECTOR (1 DOWNTO 0);
        signal mem_clk_n : INOUT STD_LOGIC_VECTOR (0 DOWNTO 0);
        signal local_size : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        signal local_wdata : IN STD_LOGIC_VECTOR (63 DOWNTO 0);
        signal soft_reset_n : IN STD_LOGIC;
        signal global_reset_n : IN STD_LOGIC;
        signal dbg_cs : IN STD_LOGIC;
        signal local_burstbegin : IN STD_LOGIC;
        signal local_write_req : IN STD_LOGIC;
        signal local_address : IN STD_LOGIC_VECTOR (23 DOWNTO 0);
        signal dbg_addr : IN STD_LOGIC_VECTOR (12 DOWNTO 0);
        signal dbg_wr : IN STD_LOGIC;
        signal pll_ref_clk : IN STD_LOGIC;
        signal local_be : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        signal local_read_req : IN STD_LOGIC;
        signal dbg_rd : IN STD_LOGIC;
        signal dbg_wr_data : IN STD_LOGIC_VECTOR (31 DOWNTO 0)
      );
  end component ddr3_mem;
  component ddr3_mem_example_driver is
PORT (
    signal local_size : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
        signal local_cs_addr : OUT STD_LOGIC;
        signal local_wdata : OUT STD_LOGIC_VECTOR (63 DOWNTO 0);
        signal test_status : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        signal local_col_addr : OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
        signal local_row_addr : OUT STD_LOGIC_VECTOR (12 DOWNTO 0);
        signal pnf_persist : OUT STD_LOGIC;
        signal local_bank_addr : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
        signal local_burstbegin : OUT STD_LOGIC;
        signal local_be : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        signal local_read_req : OUT STD_LOGIC;
        signal local_write_req : OUT STD_LOGIC;
        signal test_complete : OUT STD_LOGIC;
        signal pnf_per_byte : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
        signal local_rdata_valid : IN STD_LOGIC;
        signal local_rdata : IN STD_LOGIC_VECTOR (63 DOWNTO 0);
        signal reset_n : IN STD_LOGIC;
        signal local_ready : IN STD_LOGIC;
        signal clk : IN STD_LOGIC
      );
  end component ddr3_mem_example_driver;
                signal cs_n :  STD_LOGIC_VECTOR (0 DOWNTO 0);
                signal dbg_rd_data_sig :  STD_LOGIC_VECTOR (31 DOWNTO 0);
                signal dbg_waitrequest_sig :  STD_LOGIC;
                signal dll_reference_clk_sig :  STD_LOGIC;
                signal dqs_delay_ctrl_export_sig :  STD_LOGIC_VECTOR (5 DOWNTO 0);
                signal internal_mem_addr :  STD_LOGIC_VECTOR (12 DOWNTO 0);
                signal internal_mem_ba :  STD_LOGIC_VECTOR (2 DOWNTO 0);
                signal internal_mem_cas_n :  STD_LOGIC;
                signal internal_mem_cke :  STD_LOGIC_VECTOR (0 DOWNTO 0);
                signal internal_mem_dm :  STD_LOGIC_VECTOR (1 DOWNTO 0);
                signal internal_mem_odt :  STD_LOGIC_VECTOR (0 DOWNTO 0);
                signal internal_mem_ras_n :  STD_LOGIC;
                signal internal_mem_reset_n :  STD_LOGIC;
                signal internal_mem_we_n :  STD_LOGIC;
                signal internal_pnf :  STD_LOGIC;
                signal internal_pnf_per_byte :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal internal_test_complete :  STD_LOGIC;
                signal internal_test_status :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal local_burstbegin_sig :  STD_LOGIC;
                signal mem_aux_full_rate_clk :  STD_LOGIC;
                signal mem_aux_half_rate_clk :  STD_LOGIC;
                signal mem_local_addr :  STD_LOGIC_VECTOR (23 DOWNTO 0);
                signal mem_local_be :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal mem_local_col_addr :  STD_LOGIC_VECTOR (9 DOWNTO 0);
                signal mem_local_cs_addr :  STD_LOGIC;
                signal mem_local_rdata :  STD_LOGIC_VECTOR (63 DOWNTO 0);
                signal mem_local_rdata_valid :  STD_LOGIC;
                signal mem_local_read_req :  STD_LOGIC;
                signal mem_local_ready :  STD_LOGIC;
                signal mem_local_size :  STD_LOGIC_VECTOR (2 DOWNTO 0);
                signal mem_local_wdata :  STD_LOGIC_VECTOR (63 DOWNTO 0);
                signal mem_local_write_req :  STD_LOGIC;
                signal phy_clk :  STD_LOGIC;
                signal reset_phy_clk_n :  STD_LOGIC;
                signal tie_high :  STD_LOGIC;
                signal tie_low :  STD_LOGIC;

begin

  --
 
  --
 
  mem_cs_n <= cs_n;
  --<< END MEGAWIZARD INSERT MODULE

  tie_high <= std_logic'('1');
  tie_low <= std_logic'('0');
  --<< START MEGAWIZARD INSERT WRAPPER_NAME
  ddr3_mem_inst : ddr3_mem
    port map(
            aux_full_rate_clk => mem_aux_full_rate_clk,
            aux_half_rate_clk => mem_aux_half_rate_clk,
            dbg_addr => std_logic_vector'("0000000000000"),
            dbg_cs => std_logic'('0'),
            dbg_rd => std_logic'('0'),
            dbg_rd_data => dbg_rd_data_sig,
            dbg_waitrequest => dbg_waitrequest_sig,
            dbg_wr => std_logic'('0'),
            dbg_wr_data => std_logic_vector'("00000000000000000000000000000000"),
            dll_reference_clk => dll_reference_clk_sig,
            dqs_delay_ctrl_export => dqs_delay_ctrl_export_sig,
            global_reset_n => global_reset_n,
            local_address => mem_local_addr,
            local_be => mem_local_be,
            local_burstbegin => local_burstbegin_sig,
            local_init_done => open,
            local_rdata => mem_local_rdata,
            local_rdata_valid => mem_local_rdata_valid,
            local_read_req => mem_local_read_req,
            local_ready => mem_local_ready,
            local_refresh_ack => open,
            local_size => mem_local_size,
            local_wdata => mem_local_wdata,
            local_write_req => mem_local_write_req,
            mem_addr => internal_mem_addr(12 DOWNTO 0),
            mem_ba => internal_mem_ba,
            mem_cas_n => internal_mem_cas_n,
            mem_cke(0) => internal_mem_cke(0),
            mem_clk(0) => mem_clk(0),
            mem_clk_n(0) => mem_clk_n(0),
            mem_cs_n(0) => cs_n(0),
            mem_dm => internal_mem_dm(1 DOWNTO 0),
            mem_dq => mem_dq,
            mem_dqs => mem_dqs(1 DOWNTO 0),
            mem_dqsn => mem_dqsn(1 DOWNTO 0),
            mem_odt(0) => internal_mem_odt(0),
            mem_ras_n => internal_mem_ras_n,
            mem_reset_n => internal_mem_reset_n,
            mem_we_n => internal_mem_we_n,
            phy_clk => phy_clk,
            pll_ref_clk => clock_source,
            reset_phy_clk_n => reset_phy_clk_n,
            reset_request_n => open,
            soft_reset_n => tie_high
    );

  --<< END MEGAWIZARD INSERT WRAPPER_NAME

  --<< START MEGAWIZARD INSERT CS_ADDR_MAP
  --connect up the column address bits, dropping 2 bits from example driver output because of 4:1 data rate
  mem_local_addr(7 DOWNTO 0) <= mem_local_col_addr(9 DOWNTO 2);
  --<< END MEGAWIZARD INSERT CS_ADDR_MAP

  --<< START MEGAWIZARD INSERT EXAMPLE_DRIVER
  --Self-test, synthesisable code to exercise the DDR SDRAM Controller
  driver : ddr3_mem_example_driver
    port map(
            clk => phy_clk,
            local_bank_addr => mem_local_addr(23 DOWNTO 21),
            local_be => mem_local_be,
            local_burstbegin => local_burstbegin_sig,
            local_col_addr => mem_local_col_addr,
            local_cs_addr => mem_local_cs_addr,
            local_rdata => mem_local_rdata,
            local_rdata_valid => mem_local_rdata_valid,
            local_read_req => mem_local_read_req,
            local_ready => mem_local_ready,
            local_row_addr => mem_local_addr(20 DOWNTO 8),
            local_size => mem_local_size,
            local_wdata => mem_local_wdata,
            local_write_req => mem_local_write_req,
            pnf_per_byte => internal_pnf_per_byte(7 DOWNTO 0),
            pnf_persist => internal_pnf,
            reset_n => reset_phy_clk_n,
            test_complete => internal_test_complete,
            test_status => internal_test_status
    );

  --<< END MEGAWIZARD INSERT EXAMPLE_DRIVER

  --<< START MEGAWIZARD INSERT DLL

  --<< END MEGAWIZARD INSERT DLL
  
  /*
  signal av_address: std_logic_vector(12 downto 0);
  signal av_write_n: std_logic;
  signal av_writedata: std_logic_vector(31 downto 0);
  signal av_read_n: std_logic;
  signal av_waitrequest: std_logic;
  signal av_readdata: std_logic_vector(31 downto 0);
  */
  
  
  
--  jtag_avalon: alt_jtagavalon
--  generic map (
--					SLD_NODE_INFO => 203976192,
--					ADDR_WIDTH	=> 13,
--					DATA_WIDTH => 32,
--					MODE_WIDTH => 3
--				)
--  port map (
--				clk => phy_clk,
--				rst_n => reset_phy_clk_n,
--				av_address => av_address,
--				av_write_n => av_write_n,
--				av_writedata => av_writedata,
--				av_read_n => av_read_n,
--				av_readdata => av_readdata,
--				av_waitrequest => av_waitrequest
--	);
	

  --<< start europa
  --vhdl renameroo for output signals
  mem_addr <= internal_mem_addr;
  --vhdl renameroo for output signals
  mem_ba <= internal_mem_ba;
  --vhdl renameroo for output signals
  mem_cas_n <= internal_mem_cas_n;
  --vhdl renameroo for output signals
  mem_cke <= internal_mem_cke;
  --vhdl renameroo for output signals
  mem_dm <= internal_mem_dm;
  --vhdl renameroo for output signals
  mem_odt <= internal_mem_odt;
  --vhdl renameroo for output signals
  mem_ras_n <= internal_mem_ras_n;
  --vhdl renameroo for output signals
  mem_reset_n <= internal_mem_reset_n;
  --vhdl renameroo for output signals
  mem_we_n <= internal_mem_we_n;
  --vhdl renameroo for output signals
  pnf <= internal_pnf;
  --vhdl renameroo for output signals
  pnf_per_byte <= internal_pnf_per_byte;
  --vhdl renameroo for output signals
  test_complete <= internal_test_complete;
  --vhdl renameroo for output signals
  test_status <= internal_test_status;

end europa;

