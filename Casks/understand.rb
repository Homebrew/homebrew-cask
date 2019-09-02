cask 'understand' do
  version '5.1.996'
  sha256 '13698578b9585fa5fa7ab97df780f132768679229d4f87055296c7cab053b329'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
