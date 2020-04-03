cask 'understand' do
  version '5.1.1020'
  sha256 '0dc3fa5a73445c68d652f44db1a9220f6368680289e6c5ff09854e14b3cf9f26'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
