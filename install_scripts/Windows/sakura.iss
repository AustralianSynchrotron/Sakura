; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Sakura"
#define Home "..\.."
#define MyAppExeName "sakura.exe"
#define VERSION "0.3"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{18FE77C5-3895-43F5-A832-FD36D396F165}
AppName={#MyAppName}
AppVersion={#VERSION}
AppPublisher=Australian Synchrotron
AppPublisherURL=http://www.synchrotron.org.au/sakura
AppSupportURL=http://www.synchrotron.org.au/sakura
AppUpdatesURL=http://www.synchrotron.org.au/sakura
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=true
LicenseFile={#Home}\LICENSE
OutputBaseFilename=setup_sakura-{#VERSION}
SetupIconFile={#Home}\resources\app_icon.ico
UninstallDisplayIcon={uninstallexe}
Compression=lzma/Max
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "{#Home}\dist\*"; DestDir: "{app}"; Flags: "ignoreversion recursesubdirs"
Source: "{#Home}\LICENSE"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#Home}\README.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#Home}\resources\*.ico"; DestDir: "{app}\resources"; Flags: ignoreversion

; Source: "{#Home}\docs\*"; DestDir: "{app}\docs"; Flags: "ignoreversion recursesubdirs"
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\resources\app_icon.ico"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"; IconFilename: "{app}\resources\uninstall_icon.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\resources\app_icon.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: shellexec postinstall skipifsilent runhidden 
