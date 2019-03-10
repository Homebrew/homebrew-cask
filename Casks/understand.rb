cask 'understand' do
  version '5.1.977'
  sha256 '116f3a3a2fe04a22e88a08678a0d6c2391ea2406a99e8f3f456fb2c5390c38cd'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
