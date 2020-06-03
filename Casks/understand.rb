cask 'understand' do
  version '5.1.1027'
  sha256 'fcc3b5265b4eb8da9d4e41e77a1bc2ec7447fcedf01bef5398e06fb36ff8afc2'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
