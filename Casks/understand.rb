cask 'understand' do
  version '5.1.1017'
  sha256 'c81a3a4c247281d14b5fa8a3ff92d988a4185d77c0d260ac0be33afa1057a5bd'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
