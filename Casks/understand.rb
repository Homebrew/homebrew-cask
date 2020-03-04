cask 'understand' do
  version '5.1.1018'
  sha256 'c90e867a116a800eac3e04a1316cc9e9006a6bc964a87fb6750ba52b37bf96a2'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
