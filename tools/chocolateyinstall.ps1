$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Oldes/Rebol3/releases/download/3.5.6/rebol3-bulk-x86-vs.exe'
$url64      = 'https://github.com/Oldes/Rebol3/releases/download/3.5.6/rebol3-bulk-x64-vs.exe'

$packageArgs = @{
  packageName   = 'rebol3'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  fileFullPath = Join-Path $toolsDir 'rebol3.exe'

  softwareName  = 'rebol3*'

  checksum      = 'FC0D3B75E284393A5219709E0A295BFC6DD0001E866382ECA2FF8E4B1B51B1F2'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = '85BB1EF58683EE3E21C4A6DD229B612FC2109E5409462AA5EA8F82C811300364'
  checksumType64= 'sha256' #default is checksumType

}

Get-ChocolateyWebFile $packageName -FileFullPath "$toolsDir\rebol3.exe" $url $url64
