$defaultConfigLocation = "~/Saved Games/Respawn/Apex/local"
$defaultGameRoot = "C:/Program Files (x86)/Origin Games/Apex"

if (!($configLocation = Read-Host "Config location ($defaultConfigLocation)")) {
    $configLocation = $defaultConfigLocation
}

if (!($gameRoot = Read-Host "Game root ($defaultGameRoot)")) {
    $gameRoot = $defaultGameRoot
}

Move-Item "$($configLocation)/videoconfig.txt" "$($configLocation)/videoconfig.txt.bak"
New-Item -Type SymbolicLink "$($configLocation)/videoconfig.txt" -Value ./videoconfig.txt
Move-Item "$($gameRoot)/cfg/autoexec.cfg" "$($gameRoot)/cfg/autoexec.cfg.bak"
New-Item -Type SymbolicLink "$($gameRoot)/cfg/autoexec.cfg" -Value ./autoexec.cfg
