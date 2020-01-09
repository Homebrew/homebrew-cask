cask 'understand' do
  version '5.1.1011'
  sha256 'c9fdd3716a6010589a007dfa65849e8fa8bebf88d8669f91037564392d00607f'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
