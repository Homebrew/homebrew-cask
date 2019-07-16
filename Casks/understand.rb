cask 'understand' do
  version '5.1.989'
  sha256 'f562bfe30005ed484ba99c9b75d4bfd8a66937e217dfc8b235ea2f19cc2bde30'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/build-notes/',
          configuration: version.patch
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
