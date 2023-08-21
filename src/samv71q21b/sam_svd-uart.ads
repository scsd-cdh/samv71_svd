pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21B.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.UART is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Control Register
   type UART_CR_Register is record
      --  unspecified
      Reserved_0_1   : HAL.UInt2 := 16#0#;
      --  Write-only. Reset Receiver
      RSTRX          : Boolean := False;
      --  Write-only. Reset Transmitter
      RSTTX          : Boolean := False;
      --  Write-only. Receiver Enable
      RXEN           : Boolean := False;
      --  Write-only. Receiver Disable
      RXDIS          : Boolean := False;
      --  Write-only. Transmitter Enable
      TXEN           : Boolean := False;
      --  Write-only. Transmitter Disable
      TXDIS          : Boolean := False;
      --  Write-only. Reset Status
      RSTSTA         : Boolean := False;
      --  unspecified
      Reserved_9_11  : HAL.UInt3 := 16#0#;
      --  Write-only. Request Clear
      REQCLR         : Boolean := False;
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART_CR_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      RSTRX          at 0 range 2 .. 2;
      RSTTX          at 0 range 3 .. 3;
      RXEN           at 0 range 4 .. 4;
      RXDIS          at 0 range 5 .. 5;
      TXEN           at 0 range 6 .. 6;
      TXDIS          at 0 range 7 .. 7;
      RSTSTA         at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      REQCLR         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  Receiver Digital Filter
   type MR_FILTERSelect is
     (--  UART does not filter the receive line.
      DISABLED,
      --  UART filters the receive line using a three-sample filter (16x-bit clock)
--  (2 over 3 majority).
      ENABLED)
     with Size => 1;
   for MR_FILTERSelect use
     (DISABLED => 0,
      ENABLED => 1);

   --  Parity Type
   type MR_PARSelect is
     (--  Even Parity
      EVEN,
      --  Odd Parity
      ODD,
      --  Space: parity forced to 0
      SPACE,
      --  Mark: parity forced to 1
      MARK,
      --  No parity
      NO)
     with Size => 3;
   for MR_PARSelect use
     (EVEN => 0,
      ODD => 1,
      SPACE => 2,
      MARK => 3,
      NO => 4);

   --  Baud Rate Source Clock
   type MR_BRSRCCKSelect is
     (--  The baud rate is driven by the peripheral clock
      PERIPH_CLK,
      --  The baud rate is driven by a PMC-programmable clock PCK (see section Power
--  Management Controller (PMC)).
      PMC_PCK)
     with Size => 1;
   for MR_BRSRCCKSelect use
     (PERIPH_CLK => 0,
      PMC_PCK => 1);

   --  Channel Mode
   type MR_CHMODESelect is
     (--  Normal mode
      NORMAL,
      --  Automatic echo
      AUTOMATIC,
      --  Local loopback
      LOCAL_LOOPBACK,
      --  Remote loopback
      REMOTE_LOOPBACK)
     with Size => 2;
   for MR_CHMODESelect use
     (NORMAL => 0,
      AUTOMATIC => 1,
      LOCAL_LOOPBACK => 2,
      REMOTE_LOOPBACK => 3);

   --  Mode Register
   type UART_MR_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  Receiver Digital Filter
      FILTER         : MR_FILTERSelect := SAM_SVD.UART.DISABLED;
      --  unspecified
      Reserved_5_8   : HAL.UInt4 := 16#0#;
      --  Parity Type
      PAR            : MR_PARSelect := SAM_SVD.UART.EVEN;
      --  Baud Rate Source Clock
      BRSRCCK        : MR_BRSRCCKSelect := SAM_SVD.UART.PERIPH_CLK;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Channel Mode
      CHMODE         : MR_CHMODESelect := SAM_SVD.UART.NORMAL;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART_MR_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      FILTER         at 0 range 4 .. 4;
      Reserved_5_8   at 0 range 5 .. 8;
      PAR            at 0 range 9 .. 11;
      BRSRCCK        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHMODE         at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Interrupt Enable Register
   type UART_IER_Register is record
      --  Write-only. Enable RXRDY Interrupt
      RXRDY          : Boolean := False;
      --  Write-only. Enable TXRDY Interrupt
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  Write-only. Enable Overrun Error Interrupt
      OVRE           : Boolean := False;
      --  Write-only. Enable Framing Error Interrupt
      FRAME          : Boolean := False;
      --  Write-only. Enable Parity Error Interrupt
      PARE           : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Write-only. Enable TXEMPTY Interrupt
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Write-only. Enable Comparison Interrupt
      CMP            : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART_IER_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      CMP            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Interrupt Disable Register
   type UART_IDR_Register is record
      --  Write-only. Disable RXRDY Interrupt
      RXRDY          : Boolean := False;
      --  Write-only. Disable TXRDY Interrupt
      TXRDY          : Boolean := False;
      --  unspecified
      Reserved_2_4   : HAL.UInt3 := 16#0#;
      --  Write-only. Disable Overrun Error Interrupt
      OVRE           : Boolean := False;
      --  Write-only. Disable Framing Error Interrupt
      FRAME          : Boolean := False;
      --  Write-only. Disable Parity Error Interrupt
      PARE           : Boolean := False;
      --  unspecified
      Reserved_8_8   : HAL.Bit := 16#0#;
      --  Write-only. Disable TXEMPTY Interrupt
      TXEMPTY        : Boolean := False;
      --  unspecified
      Reserved_10_14 : HAL.UInt5 := 16#0#;
      --  Write-only. Disable Comparison Interrupt
      CMP            : Boolean := False;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART_IDR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      CMP            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Interrupt Mask Register
   type UART_IMR_Register is record
      --  Read-only. Mask RXRDY Interrupt
      RXRDY          : Boolean;
      --  Read-only. Disable TXRDY Interrupt
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : HAL.UInt3;
      --  Read-only. Mask Overrun Error Interrupt
      OVRE           : Boolean;
      --  Read-only. Mask Framing Error Interrupt
      FRAME          : Boolean;
      --  Read-only. Mask Parity Error Interrupt
      PARE           : Boolean;
      --  unspecified
      Reserved_8_8   : HAL.Bit;
      --  Read-only. Mask TXEMPTY Interrupt
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_10_14 : HAL.UInt5;
      --  Read-only. Mask Comparison Interrupt
      CMP            : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART_IMR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      CMP            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Status Register
   type UART_SR_Register is record
      --  Read-only. Receiver Ready
      RXRDY          : Boolean;
      --  Read-only. Transmitter Ready
      TXRDY          : Boolean;
      --  unspecified
      Reserved_2_4   : HAL.UInt3;
      --  Read-only. Overrun Error
      OVRE           : Boolean;
      --  Read-only. Framing Error
      FRAME          : Boolean;
      --  Read-only. Parity Error
      PARE           : Boolean;
      --  unspecified
      Reserved_8_8   : HAL.Bit;
      --  Read-only. Transmitter Empty
      TXEMPTY        : Boolean;
      --  unspecified
      Reserved_10_14 : HAL.UInt5;
      --  Read-only. Comparison Match
      CMP            : Boolean;
      --  unspecified
      Reserved_16_31 : HAL.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART_SR_Register use record
      RXRDY          at 0 range 0 .. 0;
      TXRDY          at 0 range 1 .. 1;
      Reserved_2_4   at 0 range 2 .. 4;
      OVRE           at 0 range 5 .. 5;
      FRAME          at 0 range 6 .. 6;
      PARE           at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      TXEMPTY        at 0 range 9 .. 9;
      Reserved_10_14 at 0 range 10 .. 14;
      CMP            at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART_RHR_RXCHR_Field is HAL.UInt8;

   --  Receive Holding Register
   type UART_RHR_Register is record
      --  Read-only. Received Character
      RXCHR         : UART_RHR_RXCHR_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART_RHR_Register use record
      RXCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype UART_THR_TXCHR_Field is HAL.UInt8;

   --  Transmit Holding Register
   type UART_THR_Register is record
      --  Write-only. Character to be Transmitted
      TXCHR         : UART_THR_TXCHR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART_THR_Register use record
      TXCHR         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype UART_BRGR_CD_Field is HAL.UInt16;

   --  Baud Rate Generator Register
   type UART_BRGR_Register is record
      --  Clock Divisor
      CD             : UART_BRGR_CD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : HAL.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART_BRGR_Register use record
      CD             at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype UART_CMPR_VAL1_Field is HAL.UInt8;

   --  Comparison Mode
   type CMPR_CMPMODESelect is
     (--  Any character is received and comparison function drives CMP flag.
      FLAG_ONLY,
      --  Comparison condition must be met to start reception.
      START_CONDITION)
     with Size => 1;
   for CMPR_CMPMODESelect use
     (FLAG_ONLY => 0,
      START_CONDITION => 1);

   subtype UART_CMPR_VAL2_Field is HAL.UInt8;

   --  Comparison Register
   type UART_CMPR_Register is record
      --  First Comparison Value for Received Character
      VAL1           : UART_CMPR_VAL1_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  Comparison Mode
      CMPMODE        : CMPR_CMPMODESelect := SAM_SVD.UART.FLAG_ONLY;
      --  unspecified
      Reserved_13_13 : HAL.Bit := 16#0#;
      --  Compare Parity
      CMPPAR         : Boolean := False;
      --  unspecified
      Reserved_15_15 : HAL.Bit := 16#0#;
      --  Second Comparison Value for Received Character
      VAL2           : UART_CMPR_VAL2_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : HAL.UInt8 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART_CMPR_Register use record
      VAL1           at 0 range 0 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      CMPMODE        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CMPPAR         at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      VAL2           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Write Protection Key
   type WPMR_WPKEYSelect is
     (--  Reset value for the field
      WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation.Always
--  reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEYSelect use
     (WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5587282);

   --  Write Protection Mode Register
   type UART_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for UART_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Universal Asynchronous Receiver Transmitter
   type UART_Peripheral is record
      --  Control Register
      CR   : aliased UART_CR_Register;
      --  Mode Register
      MR   : aliased UART_MR_Register;
      --  Interrupt Enable Register
      IER  : aliased UART_IER_Register;
      --  Interrupt Disable Register
      IDR  : aliased UART_IDR_Register;
      --  Interrupt Mask Register
      IMR  : aliased UART_IMR_Register;
      --  Status Register
      SR   : aliased UART_SR_Register;
      --  Receive Holding Register
      RHR  : aliased UART_RHR_Register;
      --  Transmit Holding Register
      THR  : aliased UART_THR_Register;
      --  Baud Rate Generator Register
      BRGR : aliased UART_BRGR_Register;
      --  Comparison Register
      CMPR : aliased UART_CMPR_Register;
      --  Write Protection Mode Register
      WPMR : aliased UART_WPMR_Register;
   end record
     with Volatile;

   for UART_Peripheral use record
      CR   at 16#0# range 0 .. 31;
      MR   at 16#4# range 0 .. 31;
      IER  at 16#8# range 0 .. 31;
      IDR  at 16#C# range 0 .. 31;
      IMR  at 16#10# range 0 .. 31;
      SR   at 16#14# range 0 .. 31;
      RHR  at 16#18# range 0 .. 31;
      THR  at 16#1C# range 0 .. 31;
      BRGR at 16#20# range 0 .. 31;
      CMPR at 16#24# range 0 .. 31;
      WPMR at 16#E4# range 0 .. 31;
   end record;

   --  Universal Asynchronous Receiver Transmitter
   UART0_Periph : aliased UART_Peripheral
     with Import, Address => UART0_Base;

   --  Universal Asynchronous Receiver Transmitter
   UART1_Periph : aliased UART_Peripheral
     with Import, Address => UART1_Base;

   --  Universal Asynchronous Receiver Transmitter
   UART2_Periph : aliased UART_Peripheral
     with Import, Address => UART2_Base;

   --  Universal Asynchronous Receiver Transmitter
   UART3_Periph : aliased UART_Peripheral
     with Import, Address => UART3_Base;

   --  Universal Asynchronous Receiver Transmitter
   UART4_Periph : aliased UART_Peripheral
     with Import, Address => UART4_Base;

end SAM_SVD.UART;
