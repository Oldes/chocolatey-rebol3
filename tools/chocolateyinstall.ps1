$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Oldes/Rebol3/releases/download/3.12.0/rebol3-bulk-windows-x86.exe'
$url64      = 'https://github.com/Oldes/Rebol3/releases/download/3.12.0/rebol3-bulk-windows-x64.exe'

$packageArgs = @{
  packageName   = 'rebol3'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  fileFullPath = Join-Path $toolsDir 'rebol3.exe'

  softwareName  = 'rebol3*'

  checksum      = '8486380691E479F8A26FC58A6E99A87AD64116512600A2DAED19B6D3E63590DD'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = '53371A2295CFBE0CA041DE4C9CA3FC2D4D8047835A780FA24747024DA0D626B3'
  checksumType64= 'sha256' #default is checksumType

}

Get-ChocolateyWebFile $packageName -FileFullPath "$toolsDir\rebol3.exe" $url $url64
