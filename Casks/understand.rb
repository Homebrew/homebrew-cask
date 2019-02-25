cask 'understand' do
  version '5.1.976'
  sha256 'f7e692fd191d8ba96cf7a4e26bac80aa348d04e51c7d2470e901d71be333692d'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
