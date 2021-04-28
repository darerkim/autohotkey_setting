ClipBoard := "Key codes of the keyboard layout`r`n`r`n"
;Remapping is supported only with keys which exist on the keyboard layout.
ClipBoard .= "virtual key codes and with GetKeySC associated scan codes:`r`n`r`n"
Loop, 0x100
{
    VK := Format("vk{:02X}",A_Index-1)
	If (SC := GetKeySC(VK)) Or GetKeyName(VK)
	{
		SC := Format("sc{:03X}",SC)
		Equal := (SCN:=GetKeyName(SC))=(VKN:=GetKeyName(VK))?"==":"<>"
		SCN:=SCN?SCN:"(empty)", VKN:=VKN?VKN:"(empty)"
		ClipBoard .= VK _(VKN) "  " Equal "  " SC  _(SCN) "`r`n"
	}
}
ClipBoard .= "`r`nscan codes and and with GetKeyVK associated virtual key codes:`r`n`r`n"
Loop, 0x1000
{
    SC := Format("sc{:03X}",A_Index-1)
	If (VK := GetKeyVK(SC)) Or GetKeyName(SC)
	{
		VK := Format("vk{:02X}",VK)
		Equal := (SCN:=GetKeyName(SC))=(VKN:=GetKeyName(VK))?"==":"<>"
		SCN:=SCN?SCN:"(empty)", VKN:=VKN?VKN:"(empty)"
		ClipBoard .= SC _(SCN) "  " Equal "  " VK  _(VKN) "`r`n"
	}
}
ToolTip, Ready
Sleep, 1000
Return
_(Text)
{
	Return "`t" SubStr(Text . "                 ", 1, 17)
}