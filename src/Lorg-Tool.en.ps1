chcp 65001 | Out-Null
Write-Output "Welcome to Lorg-Tool, download project: Roblox-NoticeSystem/Roblox-RGYBot"
$var6 = Read-Host -Prompt "Download the project"
if ( "Roblox-NoticeSystem" -eq $var6 ) {
    $uri = "https://api.github.com/repos/Lorg-Love/Roblox-NoticeSystem/releases"
    $headers = @{
        "Authorization" = "Bearer <Your_Token>"
        "X-GitHub-Api-Version"  = "2022-11-28"
    }
    $response = Invoke-RestMethod -Uri $uri -Method Get -Headers $headers
    Write-Output "The current versions are:"
    Write-Output $response.tag_name
}
elseif ( "Roblox-RGYBot" -eq $var6 ) {
    $uri = "https://api.github.com/repos/Lorg-Love/Roblox-RGYBot/releases"
    $headers = @{
        "Authorization" = "Bearer <Your_Token>"
        "X-GitHub-Api-Version"  = "2022-11-28"
    }
    $response = Invoke-RestMethod -Uri $uri -Method Get -Headers $headers
    Write-Output "The current versions are:"
    Write-Output $response.tag_name
}
$var1 = Read-Host -Prompt "Download version (do not enter V)"
$var2 = Read-Host -Prompt "Download directory (leave blank for current directory)"
$var4 = ".rbxm"
if ( -not ( "" -eq $var2 ) ) {
    if ( "Roblox-NoticeSystem" -eq $var6 ) {
        #https://github.com/Lorg-Love/Roblox-NoticeSystem/releases/download/V1.1.0/NoticeSystem.-.1.1.0.rbxm
        $var3 = "https://github.com/Lorg-Love/Roblox-NoticeSystem/releases/download/V" + "" + $var1 + "/NoticeSystem.-."
        $var5 = $var3 + "" + $var1 + "" + $var4
        Start-BitsTransfer -Source $var5 -Destination $var2
    }
    elseif ( "Roblox-RGYBot" -eq $var6 ) {
        #https://github.com/Lorg-Love/Roblox-RGYBot/releases/download/V1.0.0/RGYBot.rbxm
        $m1 = "https://github.com/Lorg-Love/Roblox-RGYBot/releases/download/V"
        $m2 = "/RGYBot.rbxm"
        $m3 = $m1 + "" + $var1 + "" + $m2
        Start-BitsTransfer -Source $m3 -Destination $var2
    }
}
else {
    if ( "Roblox-NoticeSystem" -eq $var6 ) {
        $var3 = "https://github.com/Lorg-Love/Roblox-NoticeSystem/releases/download/V" + "" + $var1 + "/NoticeSystem.-."
        $var5 = $var3 + "" + $var1 + "" + $var4
        $ms = Get-Location
        Start-BitsTransfer -Source $var5 -Destination $ms
    }
    elseif ( "Roblox-RGYBot" -eq $var6 ) {
        $m1 = "https://github.com/Lorg-Love/Roblox-RGYBot/releases/download/V"
        $m2 = "/RGYBot.rbxm"
        $m3 = $m1 + "" + $var1 + "" + $m2
        $ms = Get-Location
        Start-BitsTransfer -Source $m3 -Destination $ms
    }
}
Pause