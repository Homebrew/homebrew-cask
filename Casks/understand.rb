cask 'understand' do
  version '5.1.979'
  sha256 'b3172e78d4ee459ebd90f34f10713d3a2451e5d0ce542fdc2f2ffc811f843233'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
