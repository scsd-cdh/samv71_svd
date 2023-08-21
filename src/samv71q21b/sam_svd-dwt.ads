pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21B.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.DWT is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype DWT_CTRL_POSTPRESET_Field is HAL.UInt4;
   subtype DWT_CTRL_POSTINIT_Field is HAL.UInt4;
   subtype DWT_CTRL_SYNCTAP_Field is HAL.UInt2;
   subtype DWT_CTRL_NUMCOMP_Field is HAL.UInt4;

   --  Control Register
   type DWT_CTRL_Register is record
      CYCCNTENA      : Boolean := False;
      POSTPRESET     : DWT_CTRL_POSTPRESET_Field := 16#0#;
      POSTINIT       : DWT_CTRL_POSTINIT_Field := 16#0#;
      CYCTAP         : Boolean := False;
      SYNCTAP        : DWT_CTRL_SYNCTAP_Field := 16#0#;
      PCSAMPLENA     : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      EXCTRCENA      : Boolean := False;
      CPIEVTENA      : Boolean := False;
      EXCEVTENA      : Boolean := False;
      SLEEPEVTENA    : Boolean := False;
      LSUEVTENA      : Boolean := False;
      FOLDEVTENA     : Boolean := False;
      CYCEVTENA      : Boolean := False;
      --  unspecified
      Reserved_23_23 : HAL.Bit := 16#0#;
      NOPRFCNT       : Boolean := False;
      NOCYCCNT       : Boolean := False;
      NOEXTTRIG      : Boolean := False;
      NOTRCPKT       : Boolean := False;
      NUMCOMP        : DWT_CTRL_NUMCOMP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_CTRL_Register use record
      CYCCNTENA      at 0 range 0 .. 0;
      POSTPRESET     at 0 range 1 .. 4;
      POSTINIT       at 0 range 5 .. 8;
      CYCTAP         at 0 range 9 .. 9;
      SYNCTAP        at 0 range 10 .. 11;
      PCSAMPLENA     at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      EXCTRCENA      at 0 range 16 .. 16;
      CPIEVTENA      at 0 range 17 .. 17;
      EXCEVTENA      at 0 range 18 .. 18;
      SLEEPEVTENA    at 0 range 19 .. 19;
      LSUEVTENA      at 0 range 20 .. 20;
      FOLDEVTENA     at 0 range 21 .. 21;
      CYCEVTENA      at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      NOPRFCNT       at 0 range 24 .. 24;
      NOCYCCNT       at 0 range 25 .. 25;
      NOEXTTRIG      at 0 range 26 .. 26;
      NOTRCPKT       at 0 range 27 .. 27;
      NUMCOMP        at 0 range 28 .. 31;
   end record;

   subtype DWT_CPICNT_CPICNT_Field is HAL.UInt8;

   --  CPI Count Register
   type DWT_CPICNT_Register is record
      CPICNT        : DWT_CPICNT_CPICNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_CPICNT_Register use record
      CPICNT        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DWT_EXCCNT_EXCCNT_Field is HAL.UInt8;

   --  Exception Overhead Count Register
   type DWT_EXCCNT_Register is record
      EXCCNT        : DWT_EXCCNT_EXCCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_EXCCNT_Register use record
      EXCCNT        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DWT_SLEEPCNT_SLEEPCNT_Field is HAL.UInt8;

   --  Sleep Count Register
   type DWT_SLEEPCNT_Register is record
      SLEEPCNT      : DWT_SLEEPCNT_SLEEPCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_SLEEPCNT_Register use record
      SLEEPCNT      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DWT_LSUCNT_LSUCNT_Field is HAL.UInt8;

   --  LSU Count Register
   type DWT_LSUCNT_Register is record
      LSUCNT        : DWT_LSUCNT_LSUCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_LSUCNT_Register use record
      LSUCNT        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DWT_FOLDCNT_FOLDCNT_Field is HAL.UInt8;

   --  Folded-instruction Count Register
   type DWT_FOLDCNT_Register is record
      FOLDCNT       : DWT_FOLDCNT_FOLDCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : HAL.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_FOLDCNT_Register use record
      FOLDCNT       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype MASK_MASK_Field is HAL.UInt5;

   --  Mask Register 0
   type MASK_Register is record
      MASK          : MASK_MASK_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : HAL.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MASK_Register use record
      MASK          at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype FUNCTION_FUNCTION_Field is HAL.UInt4;
   subtype FUNCTION_DATAVSIZE_Field is HAL.UInt2;
   --  FUNCTION_DATAVADDR array element
   subtype FUNCTION_DATAVADDR_Element is HAL.UInt4;

   --  FUNCTION_DATAVADDR array
   type FUNCTION_DATAVADDR_Field_Array is array (0 .. 1)
     of FUNCTION_DATAVADDR_Element
     with Component_Size => 4, Size => 8;

   --  Type definition for FUNCTION_DATAVADDR
   type FUNCTION_DATAVADDR_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATAVADDR as a value
            Val : HAL.UInt8;
         when True =>
            --  DATAVADDR as an array
            Arr : FUNCTION_DATAVADDR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for FUNCTION_DATAVADDR_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Function Register 0
   type FUNCTION_Register is record
      FUNCTION_k     : FUNCTION_FUNCTION_Field := 16#0#;
      --  unspecified
      Reserved_4_4   : HAL.Bit := 16#0#;
      EMITRANGE      : Boolean := False;
      --  unspecified
      Reserved_6_6   : HAL.Bit := 16#0#;
      CYCMATCH       : Boolean := False;
      DATAVMATCH     : Boolean := False;
      LNK1ENA        : Boolean := False;
      DATAVSIZE      : FUNCTION_DATAVSIZE_Field := 16#0#;
      DATAVADDR      : FUNCTION_DATAVADDR_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_20_23 : HAL.UInt4 := 16#0#;
      MATCHED        : Boolean := False;
      --  unspecified
      Reserved_25_31 : HAL.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FUNCTION_Register use record
      FUNCTION_k     at 0 range 0 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      EMITRANGE      at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      CYCMATCH       at 0 range 7 .. 7;
      DATAVMATCH     at 0 range 8 .. 8;
      LNK1ENA        at 0 range 9 .. 9;
      DATAVSIZE      at 0 range 10 .. 11;
      DATAVADDR      at 0 range 12 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      MATCHED        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  DWT Software Lock Status Register
   type DWT_LSR_Register is record
      --  Read-only. Software Lock implemented
      SLI           : Boolean;
      --  Read-only. Software Lock status
      SLK           : Boolean;
      --  Read-only. Not thirty-two bit
      nTT           : Boolean;
      --  unspecified
      Reserved_3_31 : HAL.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_LSR_Register use record
      SLI           at 0 range 0 .. 0;
      SLK           at 0 range 1 .. 1;
      nTT           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype DWT_PID4_DES_2_Field is HAL.UInt4;
   subtype DWT_PID4_SIZE_Field is HAL.UInt4;

   --  DWT Peripheral Identification Register 4
   type DWT_PID4_Register is record
      --  Read-only. JEP106 continuation code
      DES_2         : DWT_PID4_DES_2_Field;
      --  Read-only. 4KB count
      SIZE          : DWT_PID4_SIZE_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_PID4_Register use record
      DES_2         at 0 range 0 .. 3;
      SIZE          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DWT_PID0_PART_0_Field is HAL.UInt8;

   --  DWT Peripheral Identification Register 0
   type DWT_PID0_Register is record
      --  Read-only. Part number bits[7:0]
      PART_0        : DWT_PID0_PART_0_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_PID0_Register use record
      PART_0        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DWT_PID1_PART_1_Field is HAL.UInt4;
   subtype DWT_PID1_DES_0_Field is HAL.UInt4;

   --  DWT Peripheral Identification Register 1
   type DWT_PID1_Register is record
      --  Read-only. Part number bits[11:8]
      PART_1        : DWT_PID1_PART_1_Field;
      --  Read-only. JEP106 identification code bits [3:0]
      DES_0         : DWT_PID1_DES_0_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_PID1_Register use record
      PART_1        at 0 range 0 .. 3;
      DES_0         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DWT_PID2_DES_1_Field is HAL.UInt3;
   subtype DWT_PID2_REVISION_Field is HAL.UInt4;

   --  DWT Peripheral Identification Register 2
   type DWT_PID2_Register is record
      --  Read-only. JEP106 identification code bits[6:4]
      DES_1         : DWT_PID2_DES_1_Field;
      --  Read-only. JEDEC assignee value is used
      JEDEC         : Boolean;
      --  Read-only. Component revision
      REVISION      : DWT_PID2_REVISION_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_PID2_Register use record
      DES_1         at 0 range 0 .. 2;
      JEDEC         at 0 range 3 .. 3;
      REVISION      at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DWT_PID3_CMOD_Field is HAL.UInt4;
   subtype DWT_PID3_REVAND_Field is HAL.UInt4;

   --  DWT Peripheral Identification Register 3
   type DWT_PID3_Register is record
      --  Read-only. Customer Modified
      CMOD          : DWT_PID3_CMOD_Field;
      --  Read-only. RevAnd
      REVAND        : DWT_PID3_REVAND_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_PID3_Register use record
      CMOD          at 0 range 0 .. 3;
      REVAND        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DWT_CID0_PRMBL_0_Field is HAL.UInt8;

   --  DWT Component Identification Register 0
   type DWT_CID0_Register is record
      --  Read-only. CoreSight component identification preamble
      PRMBL_0       : DWT_CID0_PRMBL_0_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_CID0_Register use record
      PRMBL_0       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DWT_CID1_PRMBL_1_Field is HAL.UInt4;
   subtype DWT_CID1_CLASS_Field is HAL.UInt4;

   --  DWT Component Identification Register 1
   type DWT_CID1_Register is record
      --  Read-only. CoreSight component identification preamble
      PRMBL_1       : DWT_CID1_PRMBL_1_Field;
      --  Read-only. CoreSight component class
      CLASS         : DWT_CID1_CLASS_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_CID1_Register use record
      PRMBL_1       at 0 range 0 .. 3;
      CLASS         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DWT_CID2_PRMBL_2_Field is HAL.UInt8;

   --  DWT Component Identification Register 2
   type DWT_CID2_Register is record
      --  Read-only. CoreSight component identification preamble
      PRMBL_2       : DWT_CID2_PRMBL_2_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_CID2_Register use record
      PRMBL_2       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DWT_CID3_PRMBL_3_Field is HAL.UInt8;

   --  DWT Component Identification Register 3
   type DWT_CID3_Register is record
      --  Read-only. CoreSight component identification preamble
      PRMBL_3       : DWT_CID3_PRMBL_3_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DWT_CID3_Register use record
      PRMBL_3       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Data Watchpoint and Trace Register
   type DWT_Peripheral is record
      --  Control Register
      CTRL      : aliased DWT_CTRL_Register;
      --  Cycle Count Register
      CYCCNT    : aliased HAL.UInt32;
      --  CPI Count Register
      CPICNT    : aliased DWT_CPICNT_Register;
      --  Exception Overhead Count Register
      EXCCNT    : aliased DWT_EXCCNT_Register;
      --  Sleep Count Register
      SLEEPCNT  : aliased DWT_SLEEPCNT_Register;
      --  LSU Count Register
      LSUCNT    : aliased DWT_LSUCNT_Register;
      --  Folded-instruction Count Register
      FOLDCNT   : aliased DWT_FOLDCNT_Register;
      --  Program Counter Sample Register
      PCSR      : aliased HAL.UInt32;
      --  Comparator Register 0
      COMP0     : aliased HAL.UInt32;
      --  Mask Register 0
      MASK0     : aliased MASK_Register;
      --  Function Register 0
      FUNCTION0 : aliased FUNCTION_Register;
      --  Comparator Register 1
      COMP1     : aliased HAL.UInt32;
      --  Mask Register 1
      MASK1     : aliased MASK_Register;
      --  Function Register 1
      FUNCTION1 : aliased FUNCTION_Register;
      --  Comparator Register 2
      COMP2     : aliased HAL.UInt32;
      --  Mask Register 2
      MASK2     : aliased MASK_Register;
      --  Function Register 2
      FUNCTION2 : aliased FUNCTION_Register;
      --  Comparator Register 3
      COMP3     : aliased HAL.UInt32;
      --  Mask Register 3
      MASK3     : aliased MASK_Register;
      --  Function Register 3
      FUNCTION3 : aliased FUNCTION_Register;
      --  DWT Software Lock Access Register
      LAR       : aliased HAL.UInt32;
      --  DWT Software Lock Status Register
      LSR       : aliased DWT_LSR_Register;
      --  DWT Peripheral Identification Register 4
      PID4      : aliased DWT_PID4_Register;
      --  DWT Peripheral Identification Register 5
      PID5      : aliased HAL.UInt32;
      --  DWT Peripheral Identification Register 6
      PID6      : aliased HAL.UInt32;
      --  DWT Peripheral Identification Register 7
      PID7      : aliased HAL.UInt32;
      --  DWT Peripheral Identification Register 0
      PID0      : aliased DWT_PID0_Register;
      --  DWT Peripheral Identification Register 1
      PID1      : aliased DWT_PID1_Register;
      --  DWT Peripheral Identification Register 2
      PID2      : aliased DWT_PID2_Register;
      --  DWT Peripheral Identification Register 3
      PID3      : aliased DWT_PID3_Register;
      --  DWT Component Identification Register 0
      CID0      : aliased DWT_CID0_Register;
      --  DWT Component Identification Register 1
      CID1      : aliased DWT_CID1_Register;
      --  DWT Component Identification Register 2
      CID2      : aliased DWT_CID2_Register;
      --  DWT Component Identification Register 3
      CID3      : aliased DWT_CID3_Register;
   end record
     with Volatile;

   for DWT_Peripheral use record
      CTRL      at 16#0# range 0 .. 31;
      CYCCNT    at 16#4# range 0 .. 31;
      CPICNT    at 16#8# range 0 .. 31;
      EXCCNT    at 16#C# range 0 .. 31;
      SLEEPCNT  at 16#10# range 0 .. 31;
      LSUCNT    at 16#14# range 0 .. 31;
      FOLDCNT   at 16#18# range 0 .. 31;
      PCSR      at 16#1C# range 0 .. 31;
      COMP0     at 16#20# range 0 .. 31;
      MASK0     at 16#24# range 0 .. 31;
      FUNCTION0 at 16#28# range 0 .. 31;
      COMP1     at 16#30# range 0 .. 31;
      MASK1     at 16#34# range 0 .. 31;
      FUNCTION1 at 16#38# range 0 .. 31;
      COMP2     at 16#40# range 0 .. 31;
      MASK2     at 16#44# range 0 .. 31;
      FUNCTION2 at 16#48# range 0 .. 31;
      COMP3     at 16#50# range 0 .. 31;
      MASK3     at 16#54# range 0 .. 31;
      FUNCTION3 at 16#58# range 0 .. 31;
      LAR       at 16#FB0# range 0 .. 31;
      LSR       at 16#FB4# range 0 .. 31;
      PID4      at 16#FD0# range 0 .. 31;
      PID5      at 16#FD4# range 0 .. 31;
      PID6      at 16#FD8# range 0 .. 31;
      PID7      at 16#FDC# range 0 .. 31;
      PID0      at 16#FE0# range 0 .. 31;
      PID1      at 16#FE4# range 0 .. 31;
      PID2      at 16#FE8# range 0 .. 31;
      PID3      at 16#FEC# range 0 .. 31;
      CID0      at 16#FF0# range 0 .. 31;
      CID1      at 16#FF4# range 0 .. 31;
      CID2      at 16#FF8# range 0 .. 31;
      CID3      at 16#FFC# range 0 .. 31;
   end record;

   --  Data Watchpoint and Trace Register
   DWT_Periph : aliased DWT_Peripheral
     with Import, Address => DWT_Base;

end SAM_SVD.DWT;
