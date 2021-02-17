$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Oldes/Rebol3/releases/download/3.5.0/Rebol_3.5.0_x86.exe'
$url64      = 'https://github.com/Oldes/Rebol3/releases/download/3.5.0/Rebol_3.5.0_x64.exe'

$packageArgs = @{
  packageName   = 'rebol3'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  fileFullPath = Join-Path $toolsDir 'rebol3.exe'

  softwareName  = 'rebol3*'

  checksum      = '8FD2FC66089862A8F3E710CB3CF986DC2FE35D7DAA6707F837A3243C40ABCEB2'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = 'EC00CE0B0BBEF090C264CDB57286E36892E3FB1B3D5205D6FF61C46496CB0F17'
  checksumType64= 'sha256' #default is checksumType

}

Get-ChocolateyWebFile $packageName -FileFullPath "$toolsDir\rebol3.exe" $url $url64
