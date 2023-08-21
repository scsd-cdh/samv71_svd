pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21B.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.FPB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype FPB_FP_CTRL_NUM_CODE_Field is HAL.UInt4;
   subtype FPB_FP_CTRL_NUM_LIT_Field is HAL.UInt4;
   subtype FPB_FP_CTRL_NUM_CODE_1_Field is HAL.UInt3;
   subtype FPB_FP_CTRL_REV_Field is HAL.UInt4;

   --  Flash Patch Control Register
   type FPB_FP_CTRL_Register is record
      --  Flash Patch global enable
      ENABLE         : Boolean := False;
      --  FP_CTRL write-enable key
      KEY            : Boolean := False;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Number of implemented code comparators bits [3:0]
      NUM_CODE       : FPB_FP_CTRL_NUM_CODE_Field := 16#0#;
      --  Number of literal comparators
      NUM_LIT        : FPB_FP_CTRL_NUM_LIT_Field := 16#0#;
      --  Number of implemented code comparators bits [6:4]
      NUM_CODE_1     : FPB_FP_CTRL_NUM_CODE_1_Field := 16#0#;
      --  unspecified
      Reserved_15_27 : HAL.UInt13 := 16#0#;
      --  Revision
      REV            : FPB_FP_CTRL_REV_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPB_FP_CTRL_Register use record
      ENABLE         at 0 range 0 .. 0;
      KEY            at 0 range 1 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      NUM_CODE       at 0 range 4 .. 7;
      NUM_LIT        at 0 range 8 .. 11;
      NUM_CODE_1     at 0 range 12 .. 14;
      Reserved_15_27 at 0 range 15 .. 27;
      REV            at 0 range 28 .. 31;
   end record;

   subtype FPB_FP_REMAP_REMAP_Field is HAL.UInt24;

   --  Flash Patch Remap Register
   type FPB_FP_REMAP_Register is record
      --  unspecified
      Reserved_0_4   : HAL.UInt5;
      --  Read-only. Remap address
      REMAP          : FPB_FP_REMAP_REMAP_Field;
      --  Read-only. Remap supported
      RMPSPT         : Boolean;
      --  unspecified
      Reserved_30_31 : HAL.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPB_FP_REMAP_Register use record
      Reserved_0_4   at 0 range 0 .. 4;
      REMAP          at 0 range 5 .. 28;
      RMPSPT         at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype FPB_FP_COMP_FPADDR_Field is HAL.UInt27;

   --  Flash Patch Comparator Register n
   type FPB_FP_COMP_Register is record
      --  Breakpoint enable
      BE             : Boolean := False;
      --  unspecified
      Reserved_1_1   : HAL.Bit := 16#0#;
      --  Flash Patch address
      FPADDR         : FPB_FP_COMP_FPADDR_Field := 16#0#;
      --  unspecified
      Reserved_29_30 : HAL.UInt2 := 16#0#;
      --  Flash Patch enable
      FE             : Boolean := False;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPB_FP_COMP_Register use record
      BE             at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      FPADDR         at 0 range 2 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      FE             at 0 range 31 .. 31;
   end record;

   --  Flash Patch Comparator Register n
   type FPB_FP_COMP_Registers is array (0 .. 7) of FPB_FP_COMP_Register;

   subtype FPB_FP_COMP_BREAKPOINT_MODE_BPADDR_Field is HAL.UInt31;

   --  Flash Patch Comparator Register n
   type FPB_FP_COMP_BREAKPOINT_MODE_Register is record
      --  Breakpoint enable
      BE     : Boolean := False;
      --  Breakpoint address
      BPADDR : FPB_FP_COMP_BREAKPOINT_MODE_BPADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPB_FP_COMP_BREAKPOINT_MODE_Register use record
      BE     at 0 range 0 .. 0;
      BPADDR at 0 range 1 .. 31;
   end record;

   --  Flash Patch Comparator Register n
   type FPB_FP_COMP_BREAKPOINT_MODE_Registers is array (0 .. 7)
     of FPB_FP_COMP_BREAKPOINT_MODE_Register;

   --  FPB Software Lock Status Register
   type FPB_FP_LSR_Register is record
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

   for FPB_FP_LSR_Register use record
      SLI           at 0 range 0 .. 0;
      SLK           at 0 range 1 .. 1;
      nTT           at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype FPB_FP_PID4_DES_2_Field is HAL.UInt4;
   subtype FPB_FP_PID4_SIZE_Field is HAL.UInt4;

   --  FP Peripheral Identification Register 4
   type FPB_FP_PID4_Register is record
      --  Read-only. JEP106 continuation code
      DES_2         : FPB_FP_PID4_DES_2_Field;
      --  Read-only. 4KB count
      SIZE          : FPB_FP_PID4_SIZE_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPB_FP_PID4_Register use record
      DES_2         at 0 range 0 .. 3;
      SIZE          at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FPB_FP_PID0_PART_0_Field is HAL.UInt8;

   --  FP Peripheral Identification Register 0
   type FPB_FP_PID0_Register is record
      --  Read-only. Part number bits[7:0]
      PART_0        : FPB_FP_PID0_PART_0_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPB_FP_PID0_Register use record
      PART_0        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FPB_FP_PID1_PART_1_Field is HAL.UInt4;
   subtype FPB_FP_PID1_DES_0_Field is HAL.UInt4;

   --  FP Peripheral Identification Register 1
   type FPB_FP_PID1_Register is record
      --  Read-only. Part number bits[11:8]
      PART_1        : FPB_FP_PID1_PART_1_Field;
      --  Read-only. JEP106 identification code bits [3:0]
      DES_0         : FPB_FP_PID1_DES_0_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPB_FP_PID1_Register use record
      PART_1        at 0 range 0 .. 3;
      DES_0         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FPB_FP_PID2_DES_1_Field is HAL.UInt3;
   subtype FPB_FP_PID2_REVISION_Field is HAL.UInt4;

   --  FP Peripheral Identification Register 2
   type FPB_FP_PID2_Register is record
      --  Read-only. JEP106 identification code bits[6:4]
      DES_1         : FPB_FP_PID2_DES_1_Field;
      --  Read-only. JEDEC assignee value is used
      JEDEC         : Boolean;
      --  Read-only. Component revision
      REVISION      : FPB_FP_PID2_REVISION_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPB_FP_PID2_Register use record
      DES_1         at 0 range 0 .. 2;
      JEDEC         at 0 range 3 .. 3;
      REVISION      at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FPB_FP_PID3_CMOD_Field is HAL.UInt4;
   subtype FPB_FP_PID3_REVAND_Field is HAL.UInt4;

   --  FP Peripheral Identification Register 3
   type FPB_FP_PID3_Register is record
      --  Read-only. Customer Modified
      CMOD          : FPB_FP_PID3_CMOD_Field;
      --  Read-only. RevAnd
      REVAND        : FPB_FP_PID3_REVAND_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPB_FP_PID3_Register use record
      CMOD          at 0 range 0 .. 3;
      REVAND        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FPB_FP_CID0_PRMBL_0_Field is HAL.UInt8;

   --  FP Component Identification Register 0
   type FPB_FP_CID0_Register is record
      --  Read-only. CoreSight component identification preamble
      PRMBL_0       : FPB_FP_CID0_PRMBL_0_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPB_FP_CID0_Register use record
      PRMBL_0       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FPB_FP_CID1_PRMBL_1_Field is HAL.UInt4;
   subtype FPB_FP_CID1_CLASS_Field is HAL.UInt4;

   --  FP Component Identification Register 1
   type FPB_FP_CID1_Register is record
      --  Read-only. CoreSight component identification preamble
      PRMBL_1       : FPB_FP_CID1_PRMBL_1_Field;
      --  Read-only. CoreSight component class
      CLASS         : FPB_FP_CID1_CLASS_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPB_FP_CID1_Register use record
      PRMBL_1       at 0 range 0 .. 3;
      CLASS         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FPB_FP_CID2_PRMBL_2_Field is HAL.UInt8;

   --  FP Component Identification Register 2
   type FPB_FP_CID2_Register is record
      --  Read-only. CoreSight component identification preamble
      PRMBL_2       : FPB_FP_CID2_PRMBL_2_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPB_FP_CID2_Register use record
      PRMBL_2       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FPB_FP_CID3_PRMBL_3_Field is HAL.UInt8;

   --  FP Component Identification Register 3
   type FPB_FP_CID3_Register is record
      --  Read-only. CoreSight component identification preamble
      PRMBL_3       : FPB_FP_CID3_PRMBL_3_Field;
      --  unspecified
      Reserved_8_31 : HAL.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FPB_FP_CID3_Register use record
      PRMBL_3       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type FPB_Disc is
     (Default,
      BREAKPOINT_MODE);

   --  Flash Patch and Breakpoint
   type FPB_Peripheral
     (Discriminent : FPB_Disc := Default)
   is record
      --  Flash Patch Control Register
      FP_CTRL                 : aliased FPB_FP_CTRL_Register;
      --  Flash Patch Remap Register
      FP_REMAP                : aliased FPB_FP_REMAP_Register;
      --  FPB Software Lock Access Register
      FP_LAR                  : aliased HAL.UInt32;
      --  FPB Software Lock Status Register
      FP_LSR                  : aliased FPB_FP_LSR_Register;
      --  FP Peripheral Identification Register 4
      FP_PID4                 : aliased FPB_FP_PID4_Register;
      --  FP Peripheral Identification Register 5
      FP_PID5                 : aliased HAL.UInt32;
      --  FP Peripheral Identification Register 6
      FP_PID6                 : aliased HAL.UInt32;
      --  FP Peripheral Identification Register 7
      FP_PID7                 : aliased HAL.UInt32;
      --  FP Peripheral Identification Register 0
      FP_PID0                 : aliased FPB_FP_PID0_Register;
      --  FP Peripheral Identification Register 1
      FP_PID1                 : aliased FPB_FP_PID1_Register;
      --  FP Peripheral Identification Register 2
      FP_PID2                 : aliased FPB_FP_PID2_Register;
      --  FP Peripheral Identification Register 3
      FP_PID3                 : aliased FPB_FP_PID3_Register;
      --  FP Component Identification Register 0
      FP_CID0                 : aliased FPB_FP_CID0_Register;
      --  FP Component Identification Register 1
      FP_CID1                 : aliased FPB_FP_CID1_Register;
      --  FP Component Identification Register 2
      FP_CID2                 : aliased FPB_FP_CID2_Register;
      --  FP Component Identification Register 3
      FP_CID3                 : aliased FPB_FP_CID3_Register;
      case Discriminent is
         when Default =>
            --  Flash Patch Comparator Register n
            FP_COMP : aliased FPB_FP_COMP_Registers;
         when BREAKPOINT_MODE =>
            --  Flash Patch Comparator Register n
            FP_COMP_BREAKPOINT_MODE : aliased FPB_FP_COMP_BREAKPOINT_MODE_Registers;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for FPB_Peripheral use record
      FP_CTRL                 at 16#0# range 0 .. 31;
      FP_REMAP                at 16#4# range 0 .. 31;
      FP_LAR                  at 16#FB0# range 0 .. 31;
      FP_LSR                  at 16#FB4# range 0 .. 31;
      FP_PID4                 at 16#FD0# range 0 .. 31;
      FP_PID5                 at 16#FD4# range 0 .. 31;
      FP_PID6                 at 16#FD8# range 0 .. 31;
      FP_PID7                 at 16#FDC# range 0 .. 31;
      FP_PID0                 at 16#FE0# range 0 .. 31;
      FP_PID1                 at 16#FE4# range 0 .. 31;
      FP_PID2                 at 16#FE8# range 0 .. 31;
      FP_PID3                 at 16#FEC# range 0 .. 31;
      FP_CID0                 at 16#FF0# range 0 .. 31;
      FP_CID1                 at 16#FF4# range 0 .. 31;
      FP_CID2                 at 16#FF8# range 0 .. 31;
      FP_CID3                 at 16#FFC# range 0 .. 31;
      FP_COMP                 at 16#8# range 0 .. 255;
      FP_COMP_BREAKPOINT_MODE at 16#8# range 0 .. 255;
   end record;

   --  Flash Patch and Breakpoint
   FPB_Periph : aliased FPB_Peripheral
     with Import, Address => FPB_Base;

end SAM_SVD.FPB;
