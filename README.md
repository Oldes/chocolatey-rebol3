# chocolatey-rebol3

This repo contains source for Cocolatey's [Rebol3 package](https://chocolatey.org/packages/rebol3/)

### Notes what to do to upgrade version:

1. edit `tools\chocolateyinstall.ps1` with links to new binaries and checksums
2. change version number in `rebol3.nuspec`
3. use: `choco pack rebol3.nuspec`
4. use: `choco push rebol3.$VERSION.nupkg`
5. push changes to git
