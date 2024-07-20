$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Oldes/Rebol3/releases/download/3.18.0/rebol3-bulk-windows-x86.exe'
$url64      = 'https://github.com/Oldes/Rebol3/releases/download/3.18.0/rebol3-bulk-windows-x64.exe'

$packageArgs = @{
  packageName   = 'rebol3'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  fileFullPath = Join-Path $toolsDir 'rebol3.exe'

  softwareName  = 'rebol3*'

  checksum      = 'F548EDA5E9B02FA11F796EDFF468468BA8AC0FD65A49690DF39259F7C01CE074'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = '25D1512E56B1B9B93E1FAD9F0EF4A2EC6BD7D0FFFE83C567B614A3ACF5E14CAB'
  checksumType64= 'sha256' #default is checksumType

}

Get-ChocolateyWebFile $packageName -FileFullPath "$toolsDir\rebol3.exe" $url $url64
