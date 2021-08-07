if (!(Test-Path ~/.vimrc)) {
    New-Item -ItemType SymbolicLink ~/.vimrc -Value ./vim/.vimrc > $null
    Write-Host ~/.vimrc -ForegroundColor Green
} else {
    Write-Host 'SKIP ~/.vimrc' -ForegroundColor Cyan
}
