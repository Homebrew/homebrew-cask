cask 'understand' do
  version '5.1.1003'
  sha256 '7018d561294d895eb09eeded0a0116613d92cf1e1db92da3b3bc8b66b56426fd'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
