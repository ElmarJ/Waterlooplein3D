; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Waterlooplein 3D"
#define MyAppVersion "0.4.0"
#define MyAppPublisher "Elmar Jansen"
#define MyAppURL "https://waterlooplein3d.nl"
#define MyAppExeName "Waterlooplein 3D.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{06E56523-0DE9-447F-BA18-2E31717BA8D8}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Users\elmar\repos\Waterlooplein3D\COPYING
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
OutputBaseFilename=waterlooplein3d_win64_setup
OutputDir=C:\Users\elmar\repos\Waterlooplein3D\Builds\win_x64
SetupIconFile=C:\Users\elmar\repos\Waterlooplein3D\source\Waterlooplein3D\Assets\Images\Waterlooplein3D_icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\elmar\repos\Waterlooplein3D\Builds\win_x64\Waterlooplein 3D.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\elmar\repos\Waterlooplein3D\Builds\win_x64\UnityCrashHandler64.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\elmar\repos\Waterlooplein3D\Builds\win_x64\UnityPlayer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\elmar\repos\Waterlooplein3D\Builds\win_x64\MonoBleedingEdge\*"; DestDir: "{app}\MonoBleedingEdge"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\elmar\repos\Waterlooplein3D\Builds\win_x64\Waterlooplein 3D_Data\*"; DestDir: "{app}\Waterlooplein 3D_Data"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

