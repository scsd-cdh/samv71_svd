pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMV71Q21B.svd

pragma Restrictions (No_Elaboration_Code);

with HAL;
with System;

package SAM_SVD.PIO is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   --  PIO_PER_P array
   type PIO_PER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PIO Enable Register
   type PIO_PER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PDR_P array
   type PIO_PDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PIO Disable Register
   type PIO_PDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PSR_P array
   type PIO_PSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  PIO Status Register
   type PIO_PSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_OER_P array
   type PIO_OER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Enable Register
   type PIO_OER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_OER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_OER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_ODR_P array
   type PIO_ODR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Disable Register
   type PIO_ODR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_ODR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_ODR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_OSR_P array
   type PIO_OSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Status Register
   type PIO_OSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_OSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_OSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_IFER_P array
   type PIO_IFER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Glitch Input Filter Enable Register
   type PIO_IFER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_IFER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_IFER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_IFDR_P array
   type PIO_IFDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Glitch Input Filter Disable Register
   type PIO_IFDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_IFDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_IFDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_IFSR_P array
   type PIO_IFSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Glitch Input Filter Status Register
   type PIO_IFSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_IFSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_IFSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_SODR_P array
   type PIO_SODR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Set Output Data Register
   type PIO_SODR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_SODR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_SODR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_CODR_P array
   type PIO_CODR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Clear Output Data Register
   type PIO_CODR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_CODR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_CODR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_ODSR_P array
   type PIO_ODSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Data Status Register
   type PIO_ODSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_ODSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_ODSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PDSR_P array
   type PIO_PDSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pin Data Status Register
   type PIO_PDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_IER_P array
   type PIO_IER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Enable Register
   type PIO_IER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_IER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_IER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_IDR_P array
   type PIO_IDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Disable Register
   type PIO_IDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_IDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_IDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_IMR_P array
   type PIO_IMR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Mask Register
   type PIO_IMR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_IMR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_IMR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_ISR_P array
   type PIO_ISR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Interrupt Status Register
   type PIO_ISR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_ISR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_ISR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_MDER_P array
   type PIO_MDER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Multi-driver Enable Register
   type PIO_MDER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_MDER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_MDER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_MDDR_P array
   type PIO_MDDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Multi-driver Disable Register
   type PIO_MDDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_MDDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_MDDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_MDSR_P array
   type PIO_MDSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Multi-driver Status Register
   type PIO_MDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_MDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_MDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PUDR_P array
   type PIO_PUDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pull-up Disable Register
   type PIO_PUDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PUDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PUDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PUER_P array
   type PIO_PUER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pull-up Enable Register
   type PIO_PUER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PUER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PUER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PUSR_P array
   type PIO_PUSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pad Pull-up Status Register
   type PIO_PUSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PUSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PUSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_ABCDSR_P array
   type PIO_ABCDSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Peripheral ABCD Select Register 0
   type PIO_ABCDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_ABCDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_ABCDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Peripheral ABCD Select Register 0
   type PIO_ABCDSR_Registers is array (0 .. 1) of PIO_ABCDSR_Register;

   --  PIO_IFSCDR_P array
   type PIO_IFSCDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Input Filter Slow Clock Disable Register
   type PIO_IFSCDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_IFSCDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_IFSCDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_IFSCER_P array
   type PIO_IFSCER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Input Filter Slow Clock Enable Register
   type PIO_IFSCER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_IFSCER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_IFSCER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_IFSCSR_P array
   type PIO_IFSCSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Input Filter Slow Clock Status Register
   type PIO_IFSCSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_IFSCSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_IFSCSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PIO_SCDR_DIV_Field is HAL.UInt14;

   --  Slow Clock Divider Debouncing Register
   type PIO_SCDR_Register is record
      --  Slow Clock Divider Selection for Debouncing
      DIV            : PIO_SCDR_DIV_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : HAL.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_SCDR_Register use record
      DIV            at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  PIO_PPDDR_P array
   type PIO_PPDDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pad Pull-down Disable Register
   type PIO_PPDDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PPDDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PPDDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PPDER_P array
   type PIO_PPDER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pad Pull-down Enable Register
   type PIO_PPDER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PPDER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PPDER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_PPDSR_P array
   type PIO_PPDSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Pad Pull-down Status Register
   type PIO_PPDSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_PPDSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PPDSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_OWER_P array
   type PIO_OWER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Write Enable
   type PIO_OWER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_OWER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_OWER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_OWDR_P array
   type PIO_OWDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Write Disable
   type PIO_OWDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_OWDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_OWDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_OWSR_P array
   type PIO_OWSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Output Write Status Register
   type PIO_OWSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_OWSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_OWSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_AIMER_P array
   type PIO_AIMER_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Additional Interrupt Modes Enable Register
   type PIO_AIMER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_AIMER_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_AIMER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_AIMDR_P array
   type PIO_AIMDR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Additional Interrupt Modes Disable Register
   type PIO_AIMDR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_AIMDR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_AIMDR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_AIMMR_P array
   type PIO_AIMMR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Additional Interrupt Modes Mask Register
   type PIO_AIMMR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_AIMMR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_AIMMR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_ESR_P array
   type PIO_ESR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Edge Select Register
   type PIO_ESR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_ESR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_ESR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_LSR_P array
   type PIO_LSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Level Select Register
   type PIO_LSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_LSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_LSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_ELSR_P array
   type PIO_ELSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Edge/Level Status Register
   type PIO_ELSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_ELSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_ELSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_FELLSR_P array
   type PIO_FELLSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Falling Edge/Low-Level Select Register
   type PIO_FELLSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_FELLSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_FELLSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_REHLSR_P array
   type PIO_REHLSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Rising Edge/High-Level Select Register
   type PIO_REHLSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_REHLSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_REHLSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_FRLHSR_P array
   type PIO_FRLHSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Fall/Rise - Low/High Status Register
   type PIO_FRLHSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_FRLHSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_FRLHSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  PIO_LOCKSR_P array
   type PIO_LOCKSR_P_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Lock Status
   type PIO_LOCKSR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  P as a value
            Val : HAL.UInt32;
         when True =>
            --  P as an array
            Arr : PIO_LOCKSR_P_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_LOCKSR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
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
      PASSWD => 5261647);

   --  Write Protection Mode Register
   type PIO_WPMR_Register is record
      --  Write Protection Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : HAL.UInt7 := 16#0#;
      --  Write Protection Key
      WPKEY        : WPMR_WPKEYSelect := WPMR_WPKEYSelect_Reset;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   subtype PIO_WPSR_WPVSRC_Field is HAL.UInt16;

   --  Write Protection Status Register
   type PIO_WPSR_Register is record
      --  Read-only. Write Protection Violation Status
      WPVS           : Boolean;
      --  unspecified
      Reserved_1_7   : HAL.UInt7;
      --  Read-only. Write Protection Violation Source
      WPVSRC         : PIO_WPSR_WPVSRC_Field;
      --  unspecified
      Reserved_24_31 : HAL.UInt8;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_WPSR_Register use record
      WPVS           at 0 range 0 .. 0;
      Reserved_1_7   at 0 range 1 .. 7;
      WPVSRC         at 0 range 8 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  PIO_SCHMITT_SCHMITT array
   type PIO_SCHMITT_SCHMITT_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  Schmitt Trigger Register
   type PIO_SCHMITT_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  SCHMITT as a value
            Val : HAL.UInt32;
         when True =>
            --  SCHMITT as an array
            Arr : PIO_SCHMITT_SCHMITT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_SCHMITT_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Drive of PIO Line 0
   type DRIVER_LINE0Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE0Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 1
   type DRIVER_LINE1Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE1Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 2
   type DRIVER_LINE2Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE2Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 3
   type DRIVER_LINE3Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE3Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 4
   type DRIVER_LINE4Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE4Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 5
   type DRIVER_LINE5Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE5Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 6
   type DRIVER_LINE6Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE6Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 7
   type DRIVER_LINE7Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE7Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 8
   type DRIVER_LINE8Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE8Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 9
   type DRIVER_LINE9Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE9Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 10
   type DRIVER_LINE10Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE10Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 11
   type DRIVER_LINE11Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE11Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 12
   type DRIVER_LINE12Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE12Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 13
   type DRIVER_LINE13Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE13Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 14
   type DRIVER_LINE14Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE14Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 15
   type DRIVER_LINE15Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE15Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 16
   type DRIVER_LINE16Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE16Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 17
   type DRIVER_LINE17Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE17Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 18
   type DRIVER_LINE18Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE18Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 19
   type DRIVER_LINE19Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE19Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 20
   type DRIVER_LINE20Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE20Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 21
   type DRIVER_LINE21Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE21Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 22
   type DRIVER_LINE22Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE22Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 23
   type DRIVER_LINE23Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE23Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 24
   type DRIVER_LINE24Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE24Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 25
   type DRIVER_LINE25Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE25Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 26
   type DRIVER_LINE26Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE26Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 27
   type DRIVER_LINE27Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE27Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 28
   type DRIVER_LINE28Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE28Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 29
   type DRIVER_LINE29Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE29Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 30
   type DRIVER_LINE30Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE30Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  Drive of PIO Line 31
   type DRIVER_LINE31Select is
     (--  Lowest drive
      LOW_DRIVE,
      --  Highest drive
      HIGH_DRIVE)
     with Size => 1;
   for DRIVER_LINE31Select use
     (LOW_DRIVE => 0,
      HIGH_DRIVE => 1);

   --  I/O Drive Register
   type PIO_DRIVER_Register is record
      --  Drive of PIO Line 0
      LINE0  : DRIVER_LINE0Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 1
      LINE1  : DRIVER_LINE1Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 2
      LINE2  : DRIVER_LINE2Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 3
      LINE3  : DRIVER_LINE3Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 4
      LINE4  : DRIVER_LINE4Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 5
      LINE5  : DRIVER_LINE5Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 6
      LINE6  : DRIVER_LINE6Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 7
      LINE7  : DRIVER_LINE7Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 8
      LINE8  : DRIVER_LINE8Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 9
      LINE9  : DRIVER_LINE9Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 10
      LINE10 : DRIVER_LINE10Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 11
      LINE11 : DRIVER_LINE11Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 12
      LINE12 : DRIVER_LINE12Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 13
      LINE13 : DRIVER_LINE13Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 14
      LINE14 : DRIVER_LINE14Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 15
      LINE15 : DRIVER_LINE15Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 16
      LINE16 : DRIVER_LINE16Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 17
      LINE17 : DRIVER_LINE17Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 18
      LINE18 : DRIVER_LINE18Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 19
      LINE19 : DRIVER_LINE19Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 20
      LINE20 : DRIVER_LINE20Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 21
      LINE21 : DRIVER_LINE21Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 22
      LINE22 : DRIVER_LINE22Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 23
      LINE23 : DRIVER_LINE23Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 24
      LINE24 : DRIVER_LINE24Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 25
      LINE25 : DRIVER_LINE25Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 26
      LINE26 : DRIVER_LINE26Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 27
      LINE27 : DRIVER_LINE27Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 28
      LINE28 : DRIVER_LINE28Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 29
      LINE29 : DRIVER_LINE29Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 30
      LINE30 : DRIVER_LINE30Select := SAM_SVD.PIO.LOW_DRIVE;
      --  Drive of PIO Line 31
      LINE31 : DRIVER_LINE31Select := SAM_SVD.PIO.LOW_DRIVE;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_DRIVER_Register use record
      LINE0  at 0 range 0 .. 0;
      LINE1  at 0 range 1 .. 1;
      LINE2  at 0 range 2 .. 2;
      LINE3  at 0 range 3 .. 3;
      LINE4  at 0 range 4 .. 4;
      LINE5  at 0 range 5 .. 5;
      LINE6  at 0 range 6 .. 6;
      LINE7  at 0 range 7 .. 7;
      LINE8  at 0 range 8 .. 8;
      LINE9  at 0 range 9 .. 9;
      LINE10 at 0 range 10 .. 10;
      LINE11 at 0 range 11 .. 11;
      LINE12 at 0 range 12 .. 12;
      LINE13 at 0 range 13 .. 13;
      LINE14 at 0 range 14 .. 14;
      LINE15 at 0 range 15 .. 15;
      LINE16 at 0 range 16 .. 16;
      LINE17 at 0 range 17 .. 17;
      LINE18 at 0 range 18 .. 18;
      LINE19 at 0 range 19 .. 19;
      LINE20 at 0 range 20 .. 20;
      LINE21 at 0 range 21 .. 21;
      LINE22 at 0 range 22 .. 22;
      LINE23 at 0 range 23 .. 23;
      LINE24 at 0 range 24 .. 24;
      LINE25 at 0 range 25 .. 25;
      LINE26 at 0 range 26 .. 26;
      LINE27 at 0 range 27 .. 27;
      LINE28 at 0 range 28 .. 28;
      LINE29 at 0 range 29 .. 29;
      LINE30 at 0 range 30 .. 30;
      LINE31 at 0 range 31 .. 31;
   end record;

   --  Parallel Capture Mode Data Size
   type PCMR_DSIZESelect is
     (--  The reception data in the PIO_PCRHR is a byte (8-bit)
      BYTE,
      --  The reception data in the PIO_PCRHR is a half-word (16-bit)
      HALFWORD,
      --  The reception data in the PIO_PCRHR is a word (32-bit)
      WORD)
     with Size => 2;
   for PCMR_DSIZESelect use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Parallel Capture Mode Register
   type PIO_PCMR_Register is record
      --  Parallel Capture Mode Enable
      PCEN           : Boolean := False;
      --  unspecified
      Reserved_1_3   : HAL.UInt3 := 16#0#;
      --  Parallel Capture Mode Data Size
      DSIZE          : PCMR_DSIZESelect := SAM_SVD.PIO.BYTE;
      --  unspecified
      Reserved_6_8   : HAL.UInt3 := 16#0#;
      --  Parallel Capture Mode Always Sampling
      ALWYS          : Boolean := False;
      --  Parallel Capture Mode Half Sampling
      HALFS          : Boolean := False;
      --  Parallel Capture Mode First Sample
      FRSTS          : Boolean := False;
      --  unspecified
      Reserved_12_31 : HAL.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PCMR_Register use record
      PCEN           at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      DSIZE          at 0 range 4 .. 5;
      Reserved_6_8   at 0 range 6 .. 8;
      ALWYS          at 0 range 9 .. 9;
      HALFS          at 0 range 10 .. 10;
      FRSTS          at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Parallel Capture Interrupt Enable Register
   type PIO_PCIER_Register is record
      --  Write-only. Parallel Capture Mode Data Ready Interrupt Enable
      DRDY          : Boolean := False;
      --  Write-only. Parallel Capture Mode Overrun Error Interrupt Enable
      OVRE          : Boolean := False;
      --  Write-only. End of Reception Transfer Interrupt Enable
      ENDRX         : Boolean := False;
      --  Write-only. Reception Buffer Full Interrupt Enable
      RXBUFF        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PCIER_Register use record
      DRDY          at 0 range 0 .. 0;
      OVRE          at 0 range 1 .. 1;
      ENDRX         at 0 range 2 .. 2;
      RXBUFF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Parallel Capture Interrupt Disable Register
   type PIO_PCIDR_Register is record
      --  Write-only. Parallel Capture Mode Data Ready Interrupt Disable
      DRDY          : Boolean := False;
      --  Write-only. Parallel Capture Mode Overrun Error Interrupt Disable
      OVRE          : Boolean := False;
      --  Write-only. End of Reception Transfer Interrupt Disable
      ENDRX         : Boolean := False;
      --  Write-only. Reception Buffer Full Interrupt Disable
      RXBUFF        : Boolean := False;
      --  unspecified
      Reserved_4_31 : HAL.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PCIDR_Register use record
      DRDY          at 0 range 0 .. 0;
      OVRE          at 0 range 1 .. 1;
      ENDRX         at 0 range 2 .. 2;
      RXBUFF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Parallel Capture Interrupt Mask Register
   type PIO_PCIMR_Register is record
      --  Read-only. Parallel Capture Mode Data Ready Interrupt Mask
      DRDY          : Boolean;
      --  Read-only. Parallel Capture Mode Overrun Error Interrupt Mask
      OVRE          : Boolean;
      --  Read-only. End of Reception Transfer Interrupt Mask
      ENDRX         : Boolean;
      --  Read-only. Reception Buffer Full Interrupt Mask
      RXBUFF        : Boolean;
      --  unspecified
      Reserved_4_31 : HAL.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PCIMR_Register use record
      DRDY          at 0 range 0 .. 0;
      OVRE          at 0 range 1 .. 1;
      ENDRX         at 0 range 2 .. 2;
      RXBUFF        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Parallel Capture Interrupt Status Register
   type PIO_PCISR_Register is record
      --  Read-only. Parallel Capture Mode Data Ready
      DRDY          : Boolean;
      --  Read-only. Parallel Capture Mode Overrun Error
      OVRE          : Boolean;
      --  unspecified
      Reserved_2_31 : HAL.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PIO_PCISR_Register use record
      DRDY          at 0 range 0 .. 0;
      OVRE          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Parallel Input/Output Controller
   type PIO_Peripheral is record
      --  PIO Enable Register
      PER     : aliased PIO_PER_Register;
      --  PIO Disable Register
      PDR     : aliased PIO_PDR_Register;
      --  PIO Status Register
      PSR     : aliased PIO_PSR_Register;
      --  Output Enable Register
      OER     : aliased PIO_OER_Register;
      --  Output Disable Register
      ODR     : aliased PIO_ODR_Register;
      --  Output Status Register
      OSR     : aliased PIO_OSR_Register;
      --  Glitch Input Filter Enable Register
      IFER    : aliased PIO_IFER_Register;
      --  Glitch Input Filter Disable Register
      IFDR    : aliased PIO_IFDR_Register;
      --  Glitch Input Filter Status Register
      IFSR    : aliased PIO_IFSR_Register;
      --  Set Output Data Register
      SODR    : aliased PIO_SODR_Register;
      --  Clear Output Data Register
      CODR    : aliased PIO_CODR_Register;
      --  Output Data Status Register
      ODSR    : aliased PIO_ODSR_Register;
      --  Pin Data Status Register
      PDSR    : aliased PIO_PDSR_Register;
      --  Interrupt Enable Register
      IER     : aliased PIO_IER_Register;
      --  Interrupt Disable Register
      IDR     : aliased PIO_IDR_Register;
      --  Interrupt Mask Register
      IMR     : aliased PIO_IMR_Register;
      --  Interrupt Status Register
      ISR     : aliased PIO_ISR_Register;
      --  Multi-driver Enable Register
      MDER    : aliased PIO_MDER_Register;
      --  Multi-driver Disable Register
      MDDR    : aliased PIO_MDDR_Register;
      --  Multi-driver Status Register
      MDSR    : aliased PIO_MDSR_Register;
      --  Pull-up Disable Register
      PUDR    : aliased PIO_PUDR_Register;
      --  Pull-up Enable Register
      PUER    : aliased PIO_PUER_Register;
      --  Pad Pull-up Status Register
      PUSR    : aliased PIO_PUSR_Register;
      --  Peripheral ABCD Select Register 0
      ABCDSR  : aliased PIO_ABCDSR_Registers;
      --  Input Filter Slow Clock Disable Register
      IFSCDR  : aliased PIO_IFSCDR_Register;
      --  Input Filter Slow Clock Enable Register
      IFSCER  : aliased PIO_IFSCER_Register;
      --  Input Filter Slow Clock Status Register
      IFSCSR  : aliased PIO_IFSCSR_Register;
      --  Slow Clock Divider Debouncing Register
      SCDR    : aliased PIO_SCDR_Register;
      --  Pad Pull-down Disable Register
      PPDDR   : aliased PIO_PPDDR_Register;
      --  Pad Pull-down Enable Register
      PPDER   : aliased PIO_PPDER_Register;
      --  Pad Pull-down Status Register
      PPDSR   : aliased PIO_PPDSR_Register;
      --  Output Write Enable
      OWER    : aliased PIO_OWER_Register;
      --  Output Write Disable
      OWDR    : aliased PIO_OWDR_Register;
      --  Output Write Status Register
      OWSR    : aliased PIO_OWSR_Register;
      --  Additional Interrupt Modes Enable Register
      AIMER   : aliased PIO_AIMER_Register;
      --  Additional Interrupt Modes Disable Register
      AIMDR   : aliased PIO_AIMDR_Register;
      --  Additional Interrupt Modes Mask Register
      AIMMR   : aliased PIO_AIMMR_Register;
      --  Edge Select Register
      ESR     : aliased PIO_ESR_Register;
      --  Level Select Register
      LSR     : aliased PIO_LSR_Register;
      --  Edge/Level Status Register
      ELSR    : aliased PIO_ELSR_Register;
      --  Falling Edge/Low-Level Select Register
      FELLSR  : aliased PIO_FELLSR_Register;
      --  Rising Edge/High-Level Select Register
      REHLSR  : aliased PIO_REHLSR_Register;
      --  Fall/Rise - Low/High Status Register
      FRLHSR  : aliased PIO_FRLHSR_Register;
      --  Lock Status
      LOCKSR  : aliased PIO_LOCKSR_Register;
      --  Write Protection Mode Register
      WPMR    : aliased PIO_WPMR_Register;
      --  Write Protection Status Register
      WPSR    : aliased PIO_WPSR_Register;
      --  Schmitt Trigger Register
      SCHMITT : aliased PIO_SCHMITT_Register;
      --  I/O Drive Register
      DRIVER  : aliased PIO_DRIVER_Register;
      --  Parallel Capture Mode Register
      PCMR    : aliased PIO_PCMR_Register;
      --  Parallel Capture Interrupt Enable Register
      PCIER   : aliased PIO_PCIER_Register;
      --  Parallel Capture Interrupt Disable Register
      PCIDR   : aliased PIO_PCIDR_Register;
      --  Parallel Capture Interrupt Mask Register
      PCIMR   : aliased PIO_PCIMR_Register;
      --  Parallel Capture Interrupt Status Register
      PCISR   : aliased PIO_PCISR_Register;
      --  Parallel Capture Reception Holding Register
      PCRHR   : aliased HAL.UInt32;
   end record
     with Volatile;

   for PIO_Peripheral use record
      PER     at 16#0# range 0 .. 31;
      PDR     at 16#4# range 0 .. 31;
      PSR     at 16#8# range 0 .. 31;
      OER     at 16#10# range 0 .. 31;
      ODR     at 16#14# range 0 .. 31;
      OSR     at 16#18# range 0 .. 31;
      IFER    at 16#20# range 0 .. 31;
      IFDR    at 16#24# range 0 .. 31;
      IFSR    at 16#28# range 0 .. 31;
      SODR    at 16#30# range 0 .. 31;
      CODR    at 16#34# range 0 .. 31;
      ODSR    at 16#38# range 0 .. 31;
      PDSR    at 16#3C# range 0 .. 31;
      IER     at 16#40# range 0 .. 31;
      IDR     at 16#44# range 0 .. 31;
      IMR     at 16#48# range 0 .. 31;
      ISR     at 16#4C# range 0 .. 31;
      MDER    at 16#50# range 0 .. 31;
      MDDR    at 16#54# range 0 .. 31;
      MDSR    at 16#58# range 0 .. 31;
      PUDR    at 16#60# range 0 .. 31;
      PUER    at 16#64# range 0 .. 31;
      PUSR    at 16#68# range 0 .. 31;
      ABCDSR  at 16#70# range 0 .. 63;
      IFSCDR  at 16#80# range 0 .. 31;
      IFSCER  at 16#84# range 0 .. 31;
      IFSCSR  at 16#88# range 0 .. 31;
      SCDR    at 16#8C# range 0 .. 31;
      PPDDR   at 16#90# range 0 .. 31;
      PPDER   at 16#94# range 0 .. 31;
      PPDSR   at 16#98# range 0 .. 31;
      OWER    at 16#A0# range 0 .. 31;
      OWDR    at 16#A4# range 0 .. 31;
      OWSR    at 16#A8# range 0 .. 31;
      AIMER   at 16#B0# range 0 .. 31;
      AIMDR   at 16#B4# range 0 .. 31;
      AIMMR   at 16#B8# range 0 .. 31;
      ESR     at 16#C0# range 0 .. 31;
      LSR     at 16#C4# range 0 .. 31;
      ELSR    at 16#C8# range 0 .. 31;
      FELLSR  at 16#D0# range 0 .. 31;
      REHLSR  at 16#D4# range 0 .. 31;
      FRLHSR  at 16#D8# range 0 .. 31;
      LOCKSR  at 16#E0# range 0 .. 31;
      WPMR    at 16#E4# range 0 .. 31;
      WPSR    at 16#E8# range 0 .. 31;
      SCHMITT at 16#100# range 0 .. 31;
      DRIVER  at 16#118# range 0 .. 31;
      PCMR    at 16#150# range 0 .. 31;
      PCIER   at 16#154# range 0 .. 31;
      PCIDR   at 16#158# range 0 .. 31;
      PCIMR   at 16#15C# range 0 .. 31;
      PCISR   at 16#160# range 0 .. 31;
      PCRHR   at 16#164# range 0 .. 31;
   end record;

   --  Parallel Input/Output Controller
   PIOA_Periph : aliased PIO_Peripheral
     with Import, Address => PIOA_Base;

   --  Parallel Input/Output Controller
   PIOB_Periph : aliased PIO_Peripheral
     with Import, Address => PIOB_Base;

   --  Parallel Input/Output Controller
   PIOC_Periph : aliased PIO_Peripheral
     with Import, Address => PIOC_Base;

   --  Parallel Input/Output Controller
   PIOD_Periph : aliased PIO_Peripheral
     with Import, Address => PIOD_Base;

   --  Parallel Input/Output Controller
   PIOE_Periph : aliased PIO_Peripheral
     with Import, Address => PIOE_Base;

end SAM_SVD.PIO;
