; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Waterlooplein 3D"
#define MyAppVersion "2.0.1"
#define MyAppPublisher "Elmar Jansen"
#define MyAppURL "https://waterlooplein3d.nl"
#define MyAppExeName "Waterlooplein 3D.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2265F9EC-6712-4D95-8C62-C28B15566ECA}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile={#SourcePath}\..\COPYING
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
OutputBaseFilename=waterlooplein3d_win32_setup
OutputDir={#SourcePath}\..\builds\win_x86
SetupIconFile={#SourcePath}\..\source\Waterlooplein3D\Assets\Images\Waterlooplein3D_icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#SourcePath}\..\builds\win_x86\Waterlooplein 3D.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourcePath}\..\builds\win_x86\UnityCrashHandler32.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourcePath}\..\builds\win_x86\UnityPlayer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#SourcePath}\..\builds\win_x86\MonoBleedingEdge\*"; DestDir: "{app}\MonoBleedingEdge"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#SourcePath}\..\builds\win_x86\Waterlooplein 3D_Data\*"; DestDir: "{app}\Waterlooplein 3D_Data"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

