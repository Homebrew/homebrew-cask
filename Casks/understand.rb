cask 'understand' do
  version '5.1.1025'
  sha256 'fa46984d2205dcfb4b75a022e43d959f463b0a2c2b35aa5a501b95590c6311b6'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
