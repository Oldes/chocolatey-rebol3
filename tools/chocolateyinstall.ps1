$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Oldes/Rebol3/releases/download/3.10.0/rebol3-bulk-windows-x86.exe'
$url64      = 'https://github.com/Oldes/Rebol3/releases/download/3.10.0/rebol3-bulk-windows-x64.exe'

$packageArgs = @{
  packageName   = 'rebol3'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  fileFullPath = Join-Path $toolsDir 'rebol3.exe'

  softwareName  = 'rebol3*'

  checksum      = '8C6D11B1DFEE18AF2D4B586B1E3234877DD7316C8E1BABA63B7A18A041845BCA'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = '2F4B5A90835D84A0DC0EB93386700DD0E23555B78115065E08FBE218D2F811FA'
  checksumType64= 'sha256' #default is checksumType

}

Get-ChocolateyWebFile $packageName -FileFullPath "$toolsDir\rebol3.exe" $url $url64
