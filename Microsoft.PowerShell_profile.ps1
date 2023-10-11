. $env:USERPROFILE\.config\powershell\user_profile.ps1
# Import-Module Terminal-Icons
# Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineOption -PredictionViewStyle ListView
<# oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config ~/default.omp.json | Invoke-Expression #>

oh-my-posh init pwsh --config 'C:/Users/91629/1_shell.omp.json' | Invoke-Expression
oh-my-posh init pwsh --config 'C:/Users/91629/tokyonight_storm.omp.json' | Invoke-Expression

Import-Module -Name Terminal-Icons
Import-Module PSFzf
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
function which($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
      Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
  }
function gt($command) {
    # if($command -eq 'robbyrussell'){
    #     oh-my-posh init pwsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/robbyrussell.omp.json' | Invoke-Expression
    #   }
    oh-my-posh init pwsh --config "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/$command.omp.json" | Invoke-Expression
  }
clear

Set-Alias lvim 'C:\Users\91629\.local\bin\lvim.ps1'
