cask 'understand' do
  version '5.1.1004'
  sha256 '54fae5a9a92ed3e3019fd896eb2c2fbc98a7b5c8d9e0b5d380225f2a29731769'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
