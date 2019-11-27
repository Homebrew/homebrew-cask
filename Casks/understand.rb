cask 'understand' do
  version '5.1.1008'
  sha256 'd0cc84e115d45aec72dcabb1ff7e61b14c9c68ee6cfd53ba08b006926d8d7dac'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
