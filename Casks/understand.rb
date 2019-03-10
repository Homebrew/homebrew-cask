cask 'understand' do
  version '5.1.978'
  sha256 'b0064c3016cd3209bc006b9341f454c382eb17a2c3446ebd3fc68531fd821762'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
