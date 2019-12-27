cask 'understand' do
  version '5.1.1010'
  sha256 '23514129ee1d6547c233f0ca5457883a67354a24cc55182353dab4429dc330f3'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
