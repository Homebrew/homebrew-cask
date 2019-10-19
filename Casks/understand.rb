cask 'understand' do
  version '5.1.999'
  sha256 '67d4c0115fd67b8ea1affef535c6e720494cbd194ab6f5ab0512dd1b32adb255'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
