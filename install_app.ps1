$apps = @(
    "Oracle.JavaRuntimeEnvironment",
	"9P1TBXR6QDCX",
	"9NKSQGP7F2NH",
	"9NRSP6BRXBZQ",
	"9NCBCSZSJRSB",
	"9MSVKQC78PK6",
	"9WZDNCRFJ3PR",
	"Microsoft.WSL",
	"Eassos.DiskGenius",
	"Git.Git",
	"Brave.Brave",
	"Google.Chrome",
    "PDFGear.PDFGear",
	"Guru3D.Afterburner",
	"Guru3D.RTSS",
    "qBittorrent.qBittorrent",
    "Anki.Anki",
    "SoftDeluxe.FreeDownloadManager",
    "Parsec.Parsec",
    "EpicGames.EpicGamesLauncher",
    "TechPowerUp.GPU-Z",
    "Audacity.Audacity",
    "Ubisoft.Connect",
    "Nilesoft.Shell",
    "HandBrake.HandBrake",
    "Blizzard.BattleNet",
    "StartIsBack.StartAllBack",
    "AgileBits.1Password",
    "Microsoft.PowerShell",
    "Microsoft.VisualStudioCode",
    "Corsair.iCUE.5",
    "Nickvision.Parabolic",
    "Obsidian.Obsidian",
    "VideoLAN.VLC",
    "7zip.7zip",
    "Upscayl.Upscayl",
    "Proton.ProtonVPN",
	"Proton.ProtonPass",
	"Proton.ProtonDrive",
	"Proton.ProtonMail",
	"Famatech.RadminVPN",
    "Python.Python.3.9",
    "OBSProject.OBSStudio",
    "Notepad++.Notepad++",
    "OpenJS.NodeJS",
    "LocalSend.LocalSend",
    "Logitech.GHUB",
    "Discord.Discord",
    "CPUID.HWMonitor",
    "CPUID.CPU-Z",
    "Cloudflare.WARP",
    "ALCPU.CoreTemp",
    "Balena.Etcher",
    "IObit.IObitUnlocker",
    "AdrienAllard.FileConverter",
    "Logitech.LogiTune",
    "MiniTool.PartitionWizard.Free",
    "ElectronicArts.EADesktop",
    "GIMP.GIMP.3",
    "TheDocumentFoundation.LibreOffice",
    "Valve.Steam"
)

foreach ($app in $apps) {
    Write-Host "Installing $app..." -ForegroundColor Green
    
    # Special case for Battle.net (Requires custom location)
    if ($app -eq "Blizzard.BattleNet") {
        winget install $app --silent --accept-package-agreements --accept-source-agreements --location "C:\Program Files (x86)\Battle.net"
    } else {
        winget install $app --silent --accept-package-agreements --accept-source-agreements
    }
}