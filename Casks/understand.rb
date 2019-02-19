cask 'understand' do
  version '5.1.974'
  sha256 'fee0ff0696b441dcd19fc823a92f3ebb6b6f612e7bbacb38b3af0dc73351660a'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
