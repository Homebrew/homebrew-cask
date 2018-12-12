cask 'understand' do
  version '5.0.972'
  sha256 '19141b85f34cac4d0c2bc008b2bc44edea496a70320d6966e04f3402f5560ba0'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
