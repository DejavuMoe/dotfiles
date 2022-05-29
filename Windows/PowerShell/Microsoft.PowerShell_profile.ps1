# 导入 posh-git 模块
Import-Module posh-git

# 设置 oh-my-posh Shell Promote / 主题
oh-my-posh init pwsh --config "$(scoop prefix oh-my-posh)\themes\ys.omp.json" | Invoke-Expression

# 启用瞬态提示
# Enable-PoshTransientPrompt

# 设置 winfetch 别名
Set-Alias winfetch pwshfetch-test-1

# 快速获取 yyyy-MM-dd HH:mm:ss 格式的时间

function time{Get-Date -Format 'yyyy-MM-dd HH:mm:ss'}

# 清除 scoop 缓存和软件旧版本

function scoopwipe{sudo scoop cleanup -gk * && sudo scoop cleanup * -g && scoop cache rm * && scoop cleanup * && Write-Host "Scoop 缓存清理完成啦~👌" }

# 设置 Ctrl+z 为撤销
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo

# 设置 Tab 键菜单补全
Set-PSReadlineKeyHandler -Key Tab -Function Complete

# 使用 ls 和 ll 查看目录
function ListDirectory {
    (Get-ChildItem).Name
    Write-Host("")
}
Set-Alias -Name ls -Value ListDirectory
Set-Alias -Name ll -Value Get-ChildItem

# 设置向上键为后向搜索历史记录
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward

# 设置向下键为前向搜索历史纪录
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
