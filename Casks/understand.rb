cask 'understand' do
  version '5.1.1005'
  sha256 '51858a876799ff347bd6a92a3ff7332bd5f3c9bb17bbea8847173d753780a353'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
