cask 'understand' do
  version '5.1.991'
  sha256 '5229efd8fe46fd593e3d77a15f789d38c60deaf84717f90d2a06faddab8adc37'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
