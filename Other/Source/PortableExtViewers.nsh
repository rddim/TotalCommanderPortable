!macro PortableExtViewers

ExpandEnvStrings $1 "%COMMANDER_PATH%\..\..\.."

	${ReadINIStrWithDefault} "$0" "$EXEDIR\TotalCommanderPortable.ini" "ExtViewer" "restore_default" "false"
	${If} $0 == true
		DeleteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Viewer"
	${EndIf}

	${ReadINIStrWithDefault} "$0" "$EXEDIR\TotalCommanderPortable.ini" "ExtViewer" "AkelPadPortable" "false"
	${If} $0 == true
		WriteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Viewer" "$1\AkelPadPortable\AkelPadPortable.exe"
	${EndIf}

	${ReadINIStrWithDefault} "$0" "$EXEDIR\TotalCommanderPortable.ini" "ExtViewer" "GeanyPortable" "false"
	${If} $0 == true
		WriteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Viewer" "$1\GeanyPortable\GeanyPortable.exe"
	${EndIf}

	${ReadINIStrWithDefault} "$0" "$EXEDIR\TotalCommanderPortable.ini" "ExtViewer" "gVimPortable" "false"
	${If} $0 == true
		WriteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Viewer" "$1\gVimPortable\gVimPortable.exe"
	${EndIf}

	${ReadINIStrWithDefault} "$0" "$EXEDIR\TotalCommanderPortable.ini" "ExtViewer" "Notepad++Portable" "false"
	${If} $0 == true
		WriteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Viewer" "$1\Notepad++Portable\Notepad++Portable.exe"
	${EndIf}

	${ReadINIStrWithDefault} "$0" "$EXEDIR\TotalCommanderPortable.ini" "ExtViewer" "Notepad2Portable" "false"
	${If} $0 == true
		WriteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Viewer" "$1\Notepad2Portable\Notepad2Portable.exe"
	${EndIf}

	${ReadINIStrWithDefault} "$0" "$EXEDIR\TotalCommanderPortable.ini" "ExtViewer" "Notepad2-modPortable" "false"
	${If} $0 == true
		WriteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Viewer" "$1\Notepad2-modPortable\Notepad2-modPortable.exe"
	${EndIf}

!macroend
