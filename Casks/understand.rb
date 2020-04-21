cask 'understand' do
  version '5.1.1023'
  sha256 'a550b8d5a5c06794a619e98b6c43b65a1c7c7ad6ece10f24a2979b96457df173'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
