if (Get-Module -ListAvailable -Name PSReadLine) {
	Set-PSReadLineOption -PredictionSource History
} else {
	Import-Module -Name PSReadLine -Force -Prefix PS
	Set-PSReadLineOption -PredictionSource History
}

$env:POSH_GIT_ENABLED = $true

oh-my-posh init pwsh --config "https://raw.githubusercontent.com/tinytengu/powershell/main/theme.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\0_custom.omp.json" | Invoke-Expression

Set-Alias -Name ll -Value ls
