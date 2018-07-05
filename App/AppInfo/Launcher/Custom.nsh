${SegmentFile}

!include "${PACKAGE}\Other\Source\PortableEditors.nsh"
!include "${PACKAGE}\Other\Source\PortableExtViewers.nsh"
!include "${PACKAGE}\Other\Source\ReadINIStrWithDefault.nsh"

${SegmentPrePrimary}

	${IfNot} ${FileExists} "$EXEDIR\Data\settings\Buttonbars\DEFAULT.BAR"
		CopyFiles /SILENT "$EXEDIR\App\totalcmd\DEFAULT.BAR" "$EXEDIR\Data\settings\Buttonbars\DEFAULT.BAR"
	${EndIf}

	${IfNot} ${FileExists} "$EXEDIR\Data\settings\Buttonbars\VERTICAL.BAR"
		CopyFiles /SILENT "$EXEDIR\App\totalcmd\VERTICAL.BAR" "$EXEDIR\Data\settings\Buttonbars\VERTICAL.BAR"
	${EndIf}

!macroend

${SegmentPreExec}

	!insertmacro "PortableEditors"
	!insertmacro "PortableExtViewers"

!macroend
