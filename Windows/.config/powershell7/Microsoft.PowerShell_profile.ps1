# 導入 posh-git 模塊
Import-Module posh-git

# 導入 oh-my-posh 模塊
Import-Module oh-my-posh

# 設置主題
Set-PoshPrompt -Theme ys

# 設置 winfetch 模塊
Set-Alias winfetch pwshfetch-test-1

# 快速獲取 yyyy-MM-dd HH:mm:ss 格式的時間

function time{Get-Date -Format 'yyyy-MM-dd HH:mm:ss'}

# GPG for Canokeys: https://www.dejavu.moe/posts/canokey-openpgp/

# 終止 gpg-agent 命令別名: killgpg
function killgpg{gpg-connect-agent killagent /bye}

# 啟動 gpg-agent 命令別名: startgpg
function startgpg{gpg-connect-agent /bye}

# 查看 gpg 智慧卡狀態 命令別名: card
function card{gpg --card-status}

# 使用 scoopwipe 命令清除 scoop 緩存和軟體舊版本（使用 scoop 請取消下面的注釋行）

function scoopwipe{sudo scoop cleanup -gk * && sudo scoop cleanup * -g && scoop cache rm * && scoop cleanup * && Write-Host "Scoop 緩存清理完成啦~👌" }

# Hugo 本地預覽服務器

function hugos{hugo server --bind="0.0.0.0" --baseURL http://192.168.0.102}

# 設置 Ctrl+Z 為撤銷
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo

# 設置 Tab 鍵菜單補全
Set-PSReadlineKeyHandler -Key Tab -Function Complete

# ls 和 ll 命令
function ListDirectory {
    (Get-ChildItem).Name
    Write-Host("")
}
Set-Alias -Name ls -Value ListDirectory
Set-Alias -Name ll -Value Get-ChildItem

# 設置向上鍵為後向搜索歷史記錄
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward

# 設置向下鍵為前向搜索歷史紀錄
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward