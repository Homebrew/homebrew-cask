cask 'understand' do
  version '5.1.1024'
  sha256 '94b54ecf05b99ce5e4cd65d8430fd72649f66374dca57af9df41a0a4ec95e03f'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
