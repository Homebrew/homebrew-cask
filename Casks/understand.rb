cask 'understand' do
  version '5.1.1000'
  sha256 '514e260526912bb05a968c496415f19b723a792df28fc9569222ec999b812b5c'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
