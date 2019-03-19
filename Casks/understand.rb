cask 'understand' do
  version '5.1.981'
  sha256 '5b72bba4814aa56e0f18f9730b47f70bd56c3da2e4e619bc20560499c231dbea'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
