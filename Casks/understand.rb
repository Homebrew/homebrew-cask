cask 'understand' do
  version '5.1.1026'
  sha256 '9dde2420ee8bb0b41ce9b93f59a0918b0d7503c02486bd8eb9462e52ec05328b'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
