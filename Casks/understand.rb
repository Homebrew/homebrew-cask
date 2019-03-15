cask 'understand' do
  version '5.1.980'
  sha256 '1d18a771575bd8ef10e578657ffccca562f1e080cd446bd06d0f1a428163dd65'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
