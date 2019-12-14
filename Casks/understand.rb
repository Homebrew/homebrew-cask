cask 'understand' do
  version '5.1.1009'
  sha256 'f3571594278ba23323d86fdc104f0666543a84afc88d50207a5a79538b3536b5'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
