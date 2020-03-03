cask 'understand' do
  version '5.1.1015'
  sha256 '640c111bd4d6a70a70ce7343360babd81221c2736e55f22d7e9e06119dd836c2'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
