chcp 65001 | Out-Null
Write-Output "欢迎使用Lorg-Tool,下载项目:Roblox-NoticeSystem/Roblox-RGYBot"
$var6 = Read-Host -Prompt "下载项目"
if ( "Roblox-NoticeSystem" -eq $var6 )
{
    $uri = "https://gitee.com/api/v5/repos/ywk2022/Roblox-NoticeSystem/releases"
    $response = Invoke-RestMethod -Uri $uri -Method Get
    Write-Output "目前版本有:"
    Write-Output $response.tag_name
}
elseif ( "Roblox-RGYBot" -eq $var6 ) {
    $uri = "https://gitee.com/api/v5/repos/ywk2022/Roblox-RGYBot/releases"
    $response = Invoke-RestMethod -Uri $uri -Method Get
    Write-Output "目前版本有:"
    Write-Output $response.tag_name
}
$var1 = Read-Host -Prompt "下载版本(不要输入V)"
$var2 = Read-Host -Prompt "下载目录(留空则为当前目录)"
$var4 = ".rbxm"
if ( -not ( "" -eq $var2 ) )
{
if ( "Roblox-NoticeSystem" -eq $var6 )
{
    $var3 = "https://gitee.com/ywk2022/Roblox-NoticeSystem/releases/download/V"+""+$var1+"/NoticeSystem%20-%20"
    $var5 = $var3 + "" + $var1 + "" + $var4
    Start-BitsTransfer -Source $var5 -Destination $var2
}
elseif ( "Roblox-RGYBot" -eq $var6 ) {
    $m1 = "https://gitee.com/ywk2022/Roblox-RGYBot/releases/download/"
    $m2 = "/RGYBot.rbxm"
    $m3 = $m1 + "" + $var1 + "" + $m2
    Start-BitsTransfer -Source $m3 -Destination $var2
}
}
else {
    if ( "Roblox-NoticeSystem" -eq $var6 )
{
    $var3 = "https://gitee.com/ywk2022/Roblox-NoticeSystem/releases/download/V"+""+$var1+"/NoticeSystem%20-%20"
    $var5 = $var3 + "" + $var1 + "" + $var4
    $ms = Get-Location
    Start-BitsTransfer -Source $var5 -Destination $ms
}
elseif ( "Roblox-RGYBot" -eq $var6 ) {
    $m1 = "https://gitee.com/ywk2022/Roblox-RGYBot/releases/download/V"
    $m2 = "/RGYBot.rbxm"
    $m3 = $m1 + "" + $var1 + "" + $m2
        $ms = Get-Location
    Start-BitsTransfer -Source $m3 -Destination $ms
}
}
Pause