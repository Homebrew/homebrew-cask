cask 'understand' do
  version '5.1.1007'
  sha256 '6662fbcf9774cb2d9fb127dd7b562ee52affd73cb13c177606147305f98a068c'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
