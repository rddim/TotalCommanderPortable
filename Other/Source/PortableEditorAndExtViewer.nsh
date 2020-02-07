!macro PortableEditorAndExtViewer

ExpandEnvStrings $1 "%COMMANDER_PATH%\..\..\.."

	ReadINIStr $R0 "$EXEDIR\TotalCommanderPortable.ini" "Editor" "PortableEditor"
	${If} $R0 == ""
		DeleteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Editor"
	${Else}
		WriteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Editor" "$1\$R0"
	${EndIf}

	ReadINIStr $R0 "$EXEDIR\TotalCommanderPortable.ini" "ExtViewer" "PortableExtViewer"
	${If} $R0 == ""
		DeleteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Viewer"
	${Else}
		WriteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Viewer" "$1\$R0"
	${EndIf}

!macroend
