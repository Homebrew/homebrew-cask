cask 'understand' do
  version '5.1.990'
  sha256 '7d8007ee1502bc2cafd8c8e1d2849342295085296a0ddf90deb5206f9fa76bb5'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
