cask 'understand' do
  version '5.1.995'
  sha256 '5cf1032d4e5828f619c4b17765ab0887f13643a7d6951c6f60ac0de35d0962f7'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
