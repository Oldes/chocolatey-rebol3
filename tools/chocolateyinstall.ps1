$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Oldes/Rebol3/releases/download/3.6.0/rebol3-bulk-x86-vs.exe'
$url64      = 'https://github.com/Oldes/Rebol3/releases/download/3.6.0/rebol3-bulk-x64-vs.exe'

$packageArgs = @{
  packageName   = 'rebol3'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  fileFullPath = Join-Path $toolsDir 'rebol3.exe'

  softwareName  = 'rebol3*'

  checksum      = 'AADBACB7FD2A1476D6320DD18C80D7137A16B7F678448E2EBCF33985DCD77A47'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = '7641E85592E60AD20BB231B3E500375557210FB53EAB81BF34A414C659919766'
  checksumType64= 'sha256' #default is checksumType

}

Get-ChocolateyWebFile $packageName -FileFullPath "$toolsDir\rebol3.exe" $url $url64
