cask 'understand' do
  version '5.0.962'
  sha256 '38dddc572b73bd15fda47c7deb7426f3022f1a47fb8b4018134c5ec518bf3478'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
