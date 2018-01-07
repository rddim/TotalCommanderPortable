!macro PortableEditors

ExpandEnvStrings $1 "%COMMANDER_PATH%\..\..\.."

	${ReadINIStrWithDefault} "$0" "$EXEDIR\TotalCommanderPortable.ini" "Editor" "restore_default" "false"
	${If} $0 == true
		DeleteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Editor"
	${EndIf}

	${ReadINIStrWithDefault} "$0" "$EXEDIR\TotalCommanderPortable.ini" "Editor" "AkelPadPortable" "false"
	${If} $0 == true
		WriteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Editor" "$1\AkelPadPortable\AkelPadPortable.exe"
	${EndIf}

	${ReadINIStrWithDefault} "$0" "$EXEDIR\TotalCommanderPortable.ini" "Editor" "GeanyPortable" "false"
	${If} $0 == true
		WriteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Editor" "$1\GeanyPortable\GeanyPortable.exe"
	${EndIf}

	${ReadINIStrWithDefault} "$0" "$EXEDIR\TotalCommanderPortable.ini" "Editor" "gVimPortable" "false"
	${If} $0 == true
		WriteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Editor" "$1\gVimPortable\gVimPortable.exe"
	${EndIf}

	${ReadINIStrWithDefault} "$0" "$EXEDIR\TotalCommanderPortable.ini" "Editor" "Notepad++Portable" "false"
	${If} $0 == true
		WriteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Editor" "$1\Notepad++Portable\Notepad++Portable.exe"
	${EndIf}

	${ReadINIStrWithDefault} "$0" "$EXEDIR\TotalCommanderPortable.ini" "Editor" "Notepad2Portable" "false"
	${If} $0 == true
		WriteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Editor" "$1\Notepad2Portable\Notepad2Portable.exe"
	${EndIf}

	${ReadINIStrWithDefault} "$0" "$EXEDIR\TotalCommanderPortable.ini" "Editor" "Notepad2-modPortable" "false"
	${If} $0 == true
		WriteINIStr "$EXEDIR\Data\settings\wincmd.ini" "Configuration" "Editor" "$1\Notepad2-modPortable\Notepad2-modPortable.exe"
	${EndIf}

!macroend
