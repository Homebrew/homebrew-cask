cask 'understand' do
  version '5.1.1019'
  sha256 '403b0159a83a0c982bfe3b46eef694b6418590db7a53a4e71c50e38d14ba6553'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
