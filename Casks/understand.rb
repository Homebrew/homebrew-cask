cask 'understand' do
  version '5.1.1006'
  sha256 'e2e9c022d3e094a7f7123d7ded5d1f630b1e3e2486440b3f99004412b30f7193'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
