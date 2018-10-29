cask 'understand' do
  version '5.0.964'
  sha256 '1b4d15251d08340dbee9ac9ecd058f494c04564919b96f66cba97fbc8c94725e'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
