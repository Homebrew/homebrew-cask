cask 'understand' do
  version '5.1.1014'
  sha256 '1270371637aa3fdbec69482c382cee5435378eacf904e682fb0a56c4b89a9abe'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
