$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Oldes/Rebol3/releases/download/3.4.0/Rebol_3.4.0_x86.exe'
$url64      = 'https://github.com/Oldes/Rebol3/releases/download/3.4.0/Rebol_3.4.0_x64.exe'

$packageArgs = @{
  packageName   = 'rebol3'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  fileFullPath = Join-Path $toolsDir 'rebol3.exe'

  softwareName  = 'rebol3*'

  checksum      = '00297008DA962810C0678FE62B3476DF7634296C020A7E18350A548D14B2CB29'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = 'B45FC0503B801AB156EABE8379956098C34E65D801D8240E75D4D643A09B3D66'
  checksumType64= 'sha256' #default is checksumType

}

Get-ChocolateyWebFile $packageName -FileFullPath "$toolsDir\rebol3.exe" $url $url64
