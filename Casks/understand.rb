cask 'understand' do
  version '5.1.1028'
  sha256 '6a461fdca638291049a620d9c857cc360d1ddf0590a14733277849625ceddc71'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
