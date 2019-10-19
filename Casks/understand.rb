cask 'understand' do
  version '5.1.997'
  sha256 '852a7f800aca1c258ae9386577b1ee821bc40f80a2eb79d237c03e4029698b89'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
