cask 'understand' do
  version '5.1.1012'
  sha256 'c7c3c94b32c2b70694fdd5378734fcf262e034260c0258ad85da41ffc9032232'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
