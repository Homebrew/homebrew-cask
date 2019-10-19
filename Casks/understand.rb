cask 'understand' do
  version '5.1.998'
  sha256 'f216691bdfbcfd1e0c8901bb2ec1c2c81c56c706de96f3e906179a7a6f9f1fbc'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
