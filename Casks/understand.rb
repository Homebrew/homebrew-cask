cask 'understand' do
  version '5.1.1022'
  sha256 'c4ac47d4a8da7cfafc41c6ca65e02b33e63e906b0c7a65376c9c29c5ae928939'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
