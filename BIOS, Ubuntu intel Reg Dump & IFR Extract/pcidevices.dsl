DefinitionBlock ("", "SSDT", 2, "HACK", "PCI", 0x00000000)
{
	External (_SB_.PC00.MCHC, DeviceObj)
	Device (_SB.PC00.MCHC)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "11th Gen Core Processor Host Bridge/DRAM Registers" },
				"device_type", Buffer () { "Host bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,0,0" },
			})
		}
	}
	External (_SB_.PC00.IGPU, DeviceObj)
	Device (_SB.PC00.IGPU)
	{
		Name (_ADR, 0x00020000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"AAPL,ig-platform-id", Buffer () { 0x00, 0x00, 0x05, 0xFF },
				"model", Buffer () { "Intel TigerLake-LP GT2 [Iris Xe Graphics]" },
				"hda-gfx", Buffer () { "onboard-1" },
				"AAPL,slot-name", Buffer () { "Internal@0,2,0" },
				"device_type", Buffer () { "VGA compatible controller" },
			})
		}
	}
	External (_SB_.PC00.PEG0, DeviceObj)
	Device (_SB.PC00.PEG0)
	{
		Name (_ADR, 0x00060000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "11th Gen Core Processor PCIe Controller" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,6,0" },
			})
		}
	}
	External (_SB_.PC00.TCPU, DeviceObj)
	Device (_SB.PC00.TCPU)
	{
		Name (_ADR, 0x00040000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "TigerLake-LP Dynamic Tuning Processor Participant" },
				"device_type", Buffer () { "Signal processing controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,4,0" },
			})
		}
	}
	External (_SB_.PC00.TRP0, DeviceObj)
	Device (_SB.PC00.TRP0)
	{
		Name (_ADR, 0x00070000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Tiger Lake-LP Thunderbolt 4 PCI Express Root Port #0" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,7,0" },
			})
		}
	}
	External (_SB_.PC00.TRP1, DeviceObj)
	Device (_SB.PC00.TRP1)
	{
		Name (_ADR, 0x00070001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Tiger Lake-LP Thunderbolt 4 PCI Express Root Port #1" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,7,1" },
			})
		}
	}
	External (_SB_.PC00.TXHC, DeviceObj)
	Device (_SB.PC00.TXHC)
	{
		Name (_ADR, 0x000d0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Tiger Lake-LP Thunderbolt 4 USB Controller" },
				"device_type", Buffer () { "USB controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,13,0" },
			})
		}
	}
	External (_SB_.PC00.TDM0, DeviceObj)
	Device (_SB.PC00.TDM0)
	{
		Name (_ADR, 0x000d0002)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Tiger Lake-LP Thunderbolt 4 NHI #0" },
				"device_type", Buffer () { "USB controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,13,2" },
			})
		}
	}
	External (_SB_.PC00.ISHD, DeviceObj)
	Device (_SB.PC00.ISHD)
	{
		Name (_ADR, 0x00120000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Tiger Lake-LP Integrated Sensor Hub" },
				"device_type", Buffer () { "Serial controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,18,0" },
			})
		}
	}
	External (_SB_.PC00.XHCI, DeviceObj)
	Device (_SB.PC00.XHCI)
	{
		Name (_ADR, 0x00140000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Tiger Lake-LP USB 3.2 Gen 2x1 xHCI Host Controller" },
				"device_type", Buffer () { "USB controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,20,0" },
			})
		}
	}
	External (_SB_.PC00.I2C0, DeviceObj)
	Device (_SB.PC00.I2C0)
	{
		Name (_ADR, 0x00150000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Tiger Lake-LP Serial IO I2C Controller #0" },
				"device_type", Buffer () { "Serial bus controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,21,0" },
			})
		}
	}
	External (_SB_.PC00.I2C1, DeviceObj)
	Device (_SB.PC00.I2C1)
	{
		Name (_ADR, 0x00150001)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Tiger Lake-LP Serial IO I2C Controller #1" },
				"device_type", Buffer () { "Serial bus controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,21,1" },
			})
		}
	}
	External (_SB_.PC00.HECI, DeviceObj)
	Device (_SB.PC00.HECI)
	{
		Name (_ADR, 0x00160000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Ice Lake-LP Management Engine" },
				"device_type", Buffer () { "Communication controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,22,0" },
			})
		}
	}
	External (_SB_.PC00.RP06, DeviceObj)
	Device (_SB.PC00.RP06)
	{
		Name (_ADR, 0x001c0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Tigerlake PCH-LP PCI Express Root Port #6" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,0" },
			})
		}
	}
	External (_SB_.PC00.RP07, DeviceObj)
	Device (_SB.PC00.RP07)
	{
		Name (_ADR, 0x001c0006)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Tiger Lake-LP PCI Express Root Port #7" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,6" },
			})
		}
	}
	External (_SB_.PC00.RP09, DeviceObj)
	Device (_SB.PC00.RP09)
	{
		Name (_ADR, 0x001d0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Tiger Lake-LP PCI Express Root Port #9" },
				"device_type", Buffer () { "PCI bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,29,0" },
			})
		}
	}
	External (_SB_.PC00.LPCB, DeviceObj)
	Device (_SB.PC00.LPCB)
	{
		Name (_ADR, 0x001f0000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Tiger Lake-LP LPC Controller" },
				"device_type", Buffer () { "ISA bridge" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,0" },
			})
		}
	}
	External (_SB_.PC00.HDEF, DeviceObj)
	Device (_SB.PC00.HDEF)
	{
		Name (_ADR, 0x001f0003)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Ice Lake-LP Smart Sound Technology Audio Controller" },
				"layout-id", Buffer () { 0x10, 0x00, 0x00, 0x00 },
				"hda-gfx", Buffer () { "onboard-1" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,3" },
				"device_type", Buffer () { "Audio device" },
			})
		}
	}
	External (_SB_.PC00.SBUS, DeviceObj)
	Device (_SB.PC00.SBUS)
	{
		Name (_ADR, 0x001f0004)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Tiger Lake-LP SMBus Controller" },
				"device_type", Buffer () { "SMBus" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,4" },
			})
		}
	}
	External (_SB_.PC00.GLAN, DeviceObj)
	Device (_SB.PC00.GLAN)
	{
		Name (_ADR, 0x001f0006)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Ethernet Connection (13) I219-V" },
				"device_type", Buffer () { "Ethernet controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,31,6" },
			})
		}
	}
	External (_SB_.PC00.PEG0.PEGP, DeviceObj)
	Device (_SB.PC00.PEG0.PEGP)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "NVMe SSD Controller BG4 (DRAM-less)" },
				"device_type", Buffer () { "Non-Volatile memory controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,6,0/0,0" },
			})
		}
	}
	External (_SB_.PC00.RP06.PXSX, DeviceObj)
	Device (_SB.PC00.RP06.PXSX)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "Wi-Fi 6 AX200" },
				"device_type", Buffer () { "Network controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,0/0,0" },
			})
		}
	}
	External (_SB_.PC00.RP09.PXSX, DeviceObj)
	Device (_SB.PC00.RP09.PXSX)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "SanDisk Extreme Pro / WD Black 2018/SN750/PC SN720 NVMe SSD" },
				"device_type", Buffer () { "Non-Volatile memory controller" },
				"AAPL,slot-name", Buffer () { "Internal@0,29,0/0,0" },
			})
		}
	}
	External (_SB_.PC00.RP07.PXSX, DeviceObj)
	Device (_SB.PC00.RP07.PXSX)
	{
		Name (_ADR, 0x00000000)
		Method (_DSM, 4, NotSerialized)
		{
			If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
			Return (Package ()
			{
				"model", Buffer () { "RTS525A PCI Express Card Reader" },
				"device_type", Buffer () { "Unassigned class" },
				"AAPL,slot-name", Buffer () { "Internal@0,28,6/0,0" },
			})
		}
	}
}
