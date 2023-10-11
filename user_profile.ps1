# nvims
function LazyVim()
{
  $env:NVIM_APPNAME="LazyVim" # C:/Users/91629/AppData/Local/LazyVim/
  neovide $args
}
function AstroNvim()
{
  # this is my DEFAULT profile
  $env:NVIM_APPNAME="AstroNvim" # C:/Users/91629/AppData/Local/AstroNvim/
  neovide $args
}

function nvims()
{
  $items = "default", "LazyVim", "AstroNvim"
  $config = $items | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0

  if ([string]::IsNullOrEmpty($config))
  {
    Write-Output "Nothing selected"
    break
  }
 
  if ($config -eq "default")
  {
    $config = ""
  }

  $env:NVIM_APPNAME=$config
  neovide $args
}
# ----------------------------------------xx-----------------------------
# Alias
Set-Alias cl clear
Set-Alias vim neovide
Set-Alias vm neovide
Set-Alias ll ls
set-Alias nvd neovide
Set-Alias g git
Set-Alias grep findstr
# Set-Alias tig 'c:\Program Files\Git\usr\bin\tig.exe'
# Set-Alias less 'c:\Program Files\Git\usr\bin\less.exe'
# notepad $env:USERPROFILE\.config\powershell\user_profile.ps1