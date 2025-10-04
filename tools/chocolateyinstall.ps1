$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Oldes/Rebol3/releases/download/3.20.0/rebol3-bulk-windows-x86.exe'
$url64      = 'https://github.com/Oldes/Rebol3/releases/download/3.20.0/rebol3-bulk-windows-x64.exe'

$packageArgs = @{
  packageName   = 'rebol3'
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64
  fileFullPath = Join-Path $toolsDir 'rebol3.exe'

  softwareName  = 'rebol3*'

  checksum      = 'b407be7435588d51236bb45cad97720f163d7ed345ffc8c5eae44a095174fb9b'
  checksumType  = 'sha256' #default is md5, can also be sha1, sha256 or sha512
  checksum64    = 'adae37077b4527ab14d5aa9751a983f1dfdde38174f341c5ab1009f08bdf5741'
  checksumType64= 'sha256' #default is checksumType

}

Get-ChocolateyWebFile $packageName -FileFullPath "$toolsDir\rebol3.exe" $url $url64
