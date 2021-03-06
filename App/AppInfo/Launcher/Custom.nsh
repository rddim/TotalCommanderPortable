${SegmentFile}

!include "${PACKAGE}\Other\Source\PortableEditorAndExtViewer.nsh"

${SegmentPrePrimary}

	${IfNot} ${FileExists} "$EXEDIR\Data\settings\Buttonbars\DEFAULT.BAR"
		CopyFiles /SILENT "$EXEDIR\App\totalcmd\DEFAULT.BAR" "$EXEDIR\Data\settings\Buttonbars\DEFAULT.BAR"
	${EndIf}

	${IfNot} ${FileExists} "$EXEDIR\Data\settings\Buttonbars\VERTICAL.BAR"
		CopyFiles /SILENT "$EXEDIR\App\totalcmd\VERTICAL.BAR" "$EXEDIR\Data\settings\Buttonbars\VERTICAL.BAR"
	${EndIf}

!macroend

${SegmentPreExec}

	!insertmacro "PortableEditorAndExtViewer"

!macroend
