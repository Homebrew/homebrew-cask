cask 'understand' do
  version '5.1.1002'
  sha256 '135fe3b7437ecedd343c8a17fc299a44478e53f2f9184b07b2367dc7e43d0ea9'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
