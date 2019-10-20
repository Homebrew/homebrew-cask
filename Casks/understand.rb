cask 'understand' do
  version '5.1.1001'
  sha256 'edbc1d09808dce4674a845826e7e5f0bf0d645b094306ce9e30b7070b9aa76cd'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
