$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Oldes/Rebol3/releases/download/3.3.0/Rebol_3.3.0_x86.exe'
$url64      = 'https://github.com/Oldes/Rebol3/releases/download/3.3.0/Rebol_3.3.0_x64.exe'

$packageArgs = @{
  packageName   = 'rebol3'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  fileFullPath = Join-Path $toolsDir 'rebol3.exe'

  softwareName  = 'rebol3*'

  checksum      = 'E37B4DAADCA451F8A7FEDCB135659539903251CFE806688E3B6F75DAAB9B41D1'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = 'BFDE1ADF2A60AA02C6CAD6471979508EAB57474012CB88A074A9FB8FA794FA99'
  checksumType64= 'sha256' #default is checksumType

}

Get-ChocolateyWebFile $packageName -FileFullPath "$toolsDir\rebol3.exe" $url $url64
