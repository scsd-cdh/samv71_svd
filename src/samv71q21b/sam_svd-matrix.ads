pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21B.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.MATRIX is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  Undefined Length Burst Type
   type MCFG_ULBTSelect is
     (--  Unlimited Length Burst-No predicted end of burst is generated, therefore
--  INCR bursts coming from this master can only be broken if the Slave Slot
--  Cycle Limit is reached. If the Slot Cycle Limit is not reached, the burst
--  is normally completed by the master, at the latest, on the next AHB 1-Kbyte
--  address boundary, allowing up to 256-beat word bursts or 128-beat
--  double-word bursts.This value should not be used in the very particular
--  case of a master capable of performing back-to-back undefined length bursts
--  on a single slave, since this could indefinitely freeze the slave
--  arbitration and thus prevent another master from accessing this slave.
      UNLTD_LENGTH,
      --  Single Access-The undefined length burst is treated as a succession of
--  single accesses, allowing re-arbitration at each beat of the INCR burst or
--  bursts sequence.
      SINGLE_ACCESS,
      --  4-beat Burst-The undefined length burst or bursts sequence is split into
--  4-beat bursts or less, allowing re-arbitration every 4 beats.
      Val_4BEAT_BURST,
      --  8-beat Burst-The undefined length burst or bursts sequence is split into
--  8-beat bursts or less, allowing re-arbitration every 8 beats.
      Val_8BEAT_BURST,
      --  16-beat Burst-The undefined length burst or bursts sequence is split into
--  16-beat bursts or less, allowing re-arbitration every 16 beats.
      Val_16BEAT_BURST,
      --  32-beat Burst -The undefined length burst or bursts sequence is split into
--  32-beat bursts or less, allowing re-arbitration every 32 beats.
      Val_32BEAT_BURST,
      --  64-beat Burst-The undefined length burst or bursts sequence is split into
--  64-beat bursts or less, allowing re-arbitration every 64 beats.
      Val_64BEAT_BURST,
      --  128-beat Burst-The undefined length burst or bursts sequence is split into
--  128-beat bursts or less, allowing re-arbitration every 128 beats.
      Val_128BEAT_BURST)
     with Size => 3;
   for MCFG_ULBTSelect use
     (UNLTD_LENGTH => 0,
      SINGLE_ACCESS => 1,
      Val_4BEAT_BURST => 2,
      Val_8BEAT_BURST => 3,
      Val_16BEAT_BURST => 4,
      Val_32BEAT_BURST => 5,
      Val_64BEAT_BURST => 6,
      Val_128BEAT_BURST => 7);

   --  Master Configuration Register 0
   type MATRIX_MCFG_Register is record
      --  Undefined Length Burst Type
      ULBT          : MCFG_ULBTSelect := SAM_SVD.MATRIX.UNLTD_LENGTH;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MCFG_Register use record
      ULBT          at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Master Configuration Register 0
   type MATRIX_MCFG_Registers is array (0 .. 12) of MATRIX_MCFG_Register;

   subtype MATRIX_SCFG_SLOT_CYCLE_Field is HAL.UInt9;

   --  Default Master Type
   type SCFG_DEFMSTR_TYPESelect is
     (--  No Default Master-At the end of the current slave access, if no other
--  master request is pending, the slave is disconnected from all masters.This
--  results in a one clock cycle latency for the first access of a burst
--  transfer or for a single access.
      NONE,
      --  Last Default Master-At the end of the current slave access, if no other
--  master request is pending, the slave stays connected to the last master
--  having accessed it.This results in not having one clock cycle latency when
--  the last master tries to access the slave again.
      LAST,
      --  Fixed Default Master-At the end of the current slave access, if no other
--  master request is pending, the slave connects to the fixed master the
--  number that has been written in the FIXED_DEFMSTR field.This results in not
--  having one clock cycle latency when the fixed master tries to access the
--  slave again.
      FIXED)
     with Size => 2;
   for SCFG_DEFMSTR_TYPESelect use
     (NONE => 0,
      LAST => 1,
      FIXED => 2);

   subtype MATRIX_SCFG_FIXED_DEFMSTR_Field is HAL.UInt4;

   --  Slave Configuration Register 0
   type MATRIX_SCFG_Register is record
      --  Maximum Bus Grant Duration for Masters
      SLOT_CYCLE     : MATRIX_SCFG_SLOT_CYCLE_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : HAL.UInt7 := 16#0#;
      --  Default Master Type
      DEFMSTR_TYPE   : SCFG_DEFMSTR_TYPESelect := SAM_SVD.MATRIX.NONE;
      --  Fixed Default Master
      FIXED_DEFMSTR  : MATRIX_SCFG_FIXED_DEFMSTR_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : HAL.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_SCFG_Register use record
      SLOT_CYCLE     at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DEFMSTR_TYPE   at 0 range 16 .. 17;
      FIXED_DEFMSTR  at 0 range 18 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Slave Configuration Register 0
   type MATRIX_SCFG_Registers is array (0 .. 8) of MATRIX_SCFG_Register;

   ------------------------------------------
   -- MATRIX_MATRIX_PR cluster's Registers --
   ------------------------------------------

   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M0PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M1PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M2PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M3PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M4PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M5PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M6PR_Field is HAL.UInt2;
   subtype MATRIX_PRAS_MATRIX_MATRIX_PR_M7PR_Field is HAL.UInt2;

   --  Priority Register A for Slave 0
   type MATRIX_PRAS_MATRIX_MATRIX_PR_Register is record
      --  Master 0 Priority
      M0PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M0PR_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Master 1 Priority
      M1PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M1PR_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Master 2 Priority
      M2PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M2PR_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Master 3 Priority
      M3PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M3PR_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Master 4 Priority
      M4PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M4PR_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : HAL.UInt2 := 16#0#;
      --  Master 5 Priority
      M5PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M5PR_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : HAL.UInt2 := 16#0#;
      --  Master 6 Priority
      M6PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M6PR_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : HAL.UInt2 := 16#0#;
      --  Master 7 Priority
      M7PR           : MATRIX_PRAS_MATRIX_MATRIX_PR_M7PR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : HAL.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_PRAS_MATRIX_MATRIX_PR_Register use record
      M0PR           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      M1PR           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      M2PR           at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      M3PR           at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      M4PR           at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      M5PR           at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      M6PR           at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      M7PR           at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype MATRIX_PRBS_MATRIX_MATRIX_PR_M8PR_Field is HAL.UInt2;
   subtype MATRIX_PRBS_MATRIX_MATRIX_PR_M9PR_Field is HAL.UInt2;
   subtype MATRIX_PRBS_MATRIX_MATRIX_PR_M10PR_Field is HAL.UInt2;
   subtype MATRIX_PRBS_MATRIX_MATRIX_PR_M11PR_Field is HAL.UInt2;
   subtype MATRIX_PRBS_MATRIX_MATRIX_PR_M12PR_Field is HAL.UInt2;

   --  Priority Register B for Slave 0
   type MATRIX_PRBS_MATRIX_MATRIX_PR_Register is record
      --  Master 8 Priority
      M8PR           : MATRIX_PRBS_MATRIX_MATRIX_PR_M8PR_Field := 16#0#;
      --  unspecified
      Reserved_2_3   : HAL.UInt2 := 16#0#;
      --  Master 9 Priority
      M9PR           : MATRIX_PRBS_MATRIX_MATRIX_PR_M9PR_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : HAL.UInt2 := 16#0#;
      --  Master 10 Priority
      M10PR          : MATRIX_PRBS_MATRIX_MATRIX_PR_M10PR_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : HAL.UInt2 := 16#0#;
      --  Master 11 Priority
      M11PR          : MATRIX_PRBS_MATRIX_MATRIX_PR_M11PR_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : HAL.UInt2 := 16#0#;
      --  Master 12 Priority
      M12PR          : MATRIX_PRBS_MATRIX_MATRIX_PR_M12PR_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : HAL.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_PRBS_MATRIX_MATRIX_PR_Register use record
      M8PR           at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      M9PR           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      M10PR          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      M11PR          at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      M12PR          at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  Priority Register A for Slave 0
   type MATRIX_MATRIX_PR_Cluster is record
      --  Priority Register A for Slave 0
      PRAS : aliased MATRIX_PRAS_MATRIX_MATRIX_PR_Register;
      --  Priority Register B for Slave 0
      PRBS : aliased MATRIX_PRBS_MATRIX_MATRIX_PR_Register;
   end record
     with Size => 64;

   for MATRIX_MATRIX_PR_Cluster use record
      PRAS at 16#0# range 0 .. 31;
      PRBS at 16#4# range 0 .. 31;
   end record;

   --  Priority Register A for Slave 0
   type MATRIX_MATRIX_PR_Clusters is array (0 .. 8)
     of MATRIX_MATRIX_PR_Cluster;

   --  MATRIX_MRCR_RCB array
   type MATRIX_MRCR_RCB_Field_Array is array (0 .. 12) of Boolean
     with Component_Size => 1, Size => 13;

   --  Type definition for MATRIX_MRCR_RCB
   type MATRIX_MRCR_RCB_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RCB as a value
            Val : HAL.UInt13;
         when True =>
            --  RCB as an array
            Arr : MATRIX_MRCR_RCB_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 13;

   for MATRIX_MRCR_RCB_Field use record
      Val at 0 range 0 .. 12;
      Arr at 0 range 0 .. 12;
   end record;

   --  Master Remap Control Register
   type MATRIX_MRCR_Register is record
      --  Remap Command Bit for Master 0
      RCB            : MATRIX_MRCR_RCB_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_13_31 : HAL.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_MRCR_Register use record
      RCB            at 0 range 0 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype MATRIX_CCFG_CAN0_CAN0DMABA_Field is HAL.UInt16;

   --  CAN0 Configuration Register
   type MATRIX_CCFG_CAN0_Register is record
      --  unspecified
      Reserved_0_15 : HAL.UInt16 := 16#0#;
      --  CAN0 DMA Base Address
      CAN0DMABA     : MATRIX_CCFG_CAN0_CAN0DMABA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_CCFG_CAN0_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      CAN0DMABA     at 0 range 16 .. 31;
   end record;

   --  MATRIX_CCFG_SYSIO_SYSIO array
   type MATRIX_CCFG_SYSIO_SYSIO_Field_Array is array (4 .. 7) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for MATRIX_CCFG_SYSIO_SYSIO
   type MATRIX_CCFG_SYSIO_SYSIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SYSIO as a value
            Val : HAL.UInt4;
         when True =>
            --  SYSIO as an array
            Arr : MATRIX_CCFG_SYSIO_SYSIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for MATRIX_CCFG_SYSIO_SYSIO_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype MATRIX_CCFG_SYSIO_CAN1DMABA_Field is HAL.UInt16;

   --  System I/O and CAN1 Configuration Register
   type MATRIX_CCFG_SYSIO_Register is record
      --  unspecified
      Reserved_0_3   : HAL.UInt4 := 16#0#;
      --  PB4 or TDI Assignment
      SYSIO          : MATRIX_CCFG_SYSIO_SYSIO_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_8_11  : HAL.UInt4 := 16#0#;
      --  PB12 or ERASE Assignment
      SYSIO12        : Boolean := False;
      --  unspecified
      Reserved_13_15 : HAL.UInt3 := 16#0#;
      --  CAN1 DMA Base Address
      CAN1DMABA      : MATRIX_CCFG_SYSIO_CAN1DMABA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_CCFG_SYSIO_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      SYSIO          at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      SYSIO12        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      CAN1DMABA      at 0 range 16 .. 31;
   end record;

   --  Peripheral Clock Configuration Register
   type MATRIX_CCFG_PCCR_Register is record
      --  unspecified
      Reserved_0_19  : HAL.UInt20 := 16#0#;
      --  TC0 Clock Configuration
      TC0CC          : Boolean := False;
      --  I2SC0 Clock Configuration
      I2SC0CC        : Boolean := False;
      --  I2SC1 Clock Configuration
      I2SC1CC        : Boolean := False;
      --  unspecified
      Reserved_23_31 : HAL.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_CCFG_PCCR_Register use record
      Reserved_0_19  at 0 range 0 .. 19;
      TC0CC          at 0 range 20 .. 20;
      I2SC0CC        at 0 range 21 .. 21;
      I2SC1CC        at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Dynamic Clock Gating Register
   type MATRIX_CCFG_DYNCKG_Register is record
      --  MATRIX Dynamic Clock Gating
      MATCKG        : Boolean := False;
      --  Bridge Dynamic Clock Gating Enable
      BRIDCKG       : Boolean := False;
      --  EFC Dynamic Clock Gating Enable
      EFCCKG        : Boolean := False;
      --  unspecified
      Reserved_3_31 : HAL.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_CCFG_DYNCKG_Register use record
      MATCKG        at 0 range 0 .. 0;
      BRIDCKG       at 0 range 1 .. 1;
      EFCCKG        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  MATRIX_CCFG_SMCNFCS_SMC_NFCS array
   type MATRIX_CCFG_SMCNFCS_SMC_NFCS_Field_Array is array (0 .. 3) of Boolean
     with Component_Size => 1, Size => 4;

   --  Type definition for MATRIX_CCFG_SMCNFCS_SMC_NFCS
   type MATRIX_CCFG_SMCNFCS_SMC_NFCS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SMC_NFCS as a value
            Val : HAL.UInt4;
         when True =>
            --  SMC_NFCS as an array
            Arr : MATRIX_CCFG_SMCNFCS_SMC_NFCS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for MATRIX_CCFG_SMCNFCS_SMC_NFCS_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  SMC NAND Flash Chip Select Configuration Register
   type MATRIX_CCFG_SMCNFCS_Register is record
      --  SMC NAND Flash Chip Select 0 Assignment
      SMC_NFCS      : MATRIX_CCFG_SMCNFCS_SMC_NFCS_Field :=
                       (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_CCFG_SMCNFCS_Register use record
      SMC_NFCS      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Write Protection Key
   type WPMR_WPKEYSelect is
     (--  Reset value for the field
      WPMR_WPKEYSelect_Reset,
      --  Writing any other value in this field aborts the write operation of the
--  WPEN bit.Always reads as 0.
      PASSWD)
     with Size => 24;
   for WPMR_WPKEYSelect use
     (WPMR_WPKEYSelect_Reset => 0,
      PASSWD => 5062996);

   --  Write Protection Mode Register
   type MATRIX_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype MATRIX_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protection Status Register
   type MATRIX_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : MATRIX_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MATRIX_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  AHB Bus Matrix
   type MATRIX_Peripheral is record
      --  Master Configuration Register 0
      MCFG             : aliased MATRIX_MCFG_Registers;
      --  Slave Configuration Register 0
      SCFG             : aliased MATRIX_SCFG_Registers;
      --  Priority Register A for Slave 0
      MATRIX_MATRIX_PR : aliased MATRIX_MATRIX_PR_Clusters;
      --  Master Remap Control Register
      MRCR             : aliased MATRIX_MRCR_Register;
      --  CAN0 Configuration Register
      CCFG_CAN0        : aliased MATRIX_CCFG_CAN0_Register;
      --  System I/O and CAN1 Configuration Register
      CCFG_SYSIO       : aliased MATRIX_CCFG_SYSIO_Register;
      --  Peripheral Clock Configuration Register
      CCFG_PCCR        : aliased MATRIX_CCFG_PCCR_Register;
      --  Dynamic Clock Gating Register
      CCFG_DYNCKG      : aliased MATRIX_CCFG_DYNCKG_Register;
      --  SMC NAND Flash Chip Select Configuration Register
      CCFG_SMCNFCS     : aliased MATRIX_CCFG_SMCNFCS_Register;
      --  Write Protection Mode Register
      WPMR             : aliased MATRIX_WPMR_Register;
      --  Write Protection Status Register
      WPSR             : aliased MATRIX_WPSR_Register;
   end record
     with Volatile;

   for MATRIX_Peripheral use record
      MCFG             at 16#0# range 0 .. 415;
      SCFG             at 16#40# range 0 .. 287;
      MATRIX_MATRIX_PR at 16#80# range 0 .. 575;
      MRCR             at 16#100# range 0 .. 31;
      CCFG_CAN0        at 16#110# range 0 .. 31;
      CCFG_SYSIO       at 16#114# range 0 .. 31;
      CCFG_PCCR        at 16#118# range 0 .. 31;
      CCFG_DYNCKG      at 16#11C# range 0 .. 31;
      CCFG_SMCNFCS     at 16#124# range 0 .. 31;
      WPMR             at 16#1E4# range 0 .. 31;
      WPSR             at 16#1E8# range 0 .. 31;
   end record;

   --  AHB Bus Matrix
   MATRIX_Periph : aliased MATRIX_Peripheral
     with Import, Address => MATRIX_Base;

end SAM_SVD.MATRIX;
