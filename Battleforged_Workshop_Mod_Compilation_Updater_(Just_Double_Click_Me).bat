powershell.exe -command "Clear-Host;if([System.Environment]::OSVersion.Version.Major -lt 10){write-host 'Sorry, the Battleforged Workshop Mod Compilation Updater only works on Windows 10 or newer. Windows 7 is long out of Securty Support, for the love of the Manperor, update! Windows 8/8.1 is soon to leave Security Support. I know, it sucks, but you will need to update soon anyway. Please download and manually install The Battleforged Workshop Mod Compilation from https://github.com/BigSig/Battleforged-Workshop-Mod-Compilation'}else{Clear-Host;write-host '';write-host '=][= Angron did nothing wrong. =][=';write-host '';write-host 'Please subscribe to my mod "BCB 40k Map Base" (and the Apocalypse one if you wish) from my Map tools list:';write-host 'https://steamcommunity.com/workshop/filedetails/?id=1717042451';write-host '';write-host 'Downloading the Battleforged Workshop Mod Compilation...';$currentGlobalPreference = $global:ProgressPreference;$global:ProgressPreference = 'SilentlyContinue';$url='https://github.com/BigSig/Battleforged-Workshop-Mod-Compilation/raw/master/battleforged_workshop_mod_compilation.zip';$downloadTemp =  $env:temp+'\Battleforged-Workshop-Mod-Compilation.zip';$url2='https://github.com/BaconCatBug/Battleforged-Workshop-Mod-Compilation-Updater/raw/master/Battleforged_Workshop_Mod_Compilation_Updater_(Just_Double_Click_Me).bat';$downloadTemp2 =  $env:temp+'\Battleforged_Workshop_Mod_Compilation_Updater_(Just_Double_Click_Me).bat';$checkSuccess = 1;Invoke-WebRequest -Uri $url2 -OutFile  $downloadTemp2;Invoke-WebRequest -Uri $url -OutFile  $downloadTemp;$currentDirectory = (Get-Item -Path '.\').FullName;Copy-Item $downloadTemp2 -Destination $currentDirectory;$pathtosaves = [environment]::getfolderpath('mydocuments')+'\My Games\Tabletop Simulator';Microsoft.PowerShell.Archive\expand-archive -force -path $downloadTemp -destinationpath $pathtosaves;if($LASTEXITCODE){$checkSuccess = 1}else{$checkSuccess = 0}; if($checkSuccess){write-host 'Something went wrong, please try again. If this error persists please download and manually install The Battleforged Workshop Mod Compilation from https://github.com/BigSig/Battleforged-Workshop-Mod-Compilation'}else{write-host 'The Battleforged Workshop Mod Compilation was successfully installed!'}};$global:ProgressPreference = $currentGlobalPreference;write-host 'Press any key to exit...';[void][System.Console]::ReadKey($true)"