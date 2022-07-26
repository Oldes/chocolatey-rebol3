$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Oldes/Rebol3/releases/download/3.9.0/rebol3-bulk-windows-x86.exe'
$url64      = 'https://github.com/Oldes/Rebol3/releases/download/3.9.0/rebol3-bulk-windows-x64.exe'

$packageArgs = @{
  packageName   = 'rebol3'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  fileFullPath = Join-Path $toolsDir 'rebol3.exe'

  softwareName  = 'rebol3*'

  checksum      = '37B2431AEEAB99CE65876821D9A22BB4785ABF22B34F2236E02CB438CF00D30F'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = '52F6B4DF2CBFDD18B87D27CC035BC1304A5EE1BAE35C7893B6BDC2370295A7D1'
  checksumType64= 'sha256' #default is checksumType

}

Get-ChocolateyWebFile $packageName -FileFullPath "$toolsDir\rebol3.exe" $url $url64
