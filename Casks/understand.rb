cask 'understand' do
  version '5.1.993'
  sha256 '29bd71af4b22ec8234a10d6cfb6cabf2279804f3affd662e068062577898fb48'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
