cask 'understand' do
  version '5.1.1013'
  sha256 'fcf1d6e2887f18ec6e517ade37cc873ed40b2798b618e1f6073e8f87c8d9cd2a'

  url "http://builds.scitools.com/all_builds/b#{version.patch}/Understand/Understand-#{version}-MacOSX-x86.dmg"
  appcast 'https://scitools.com/download/all-builds/'
  name 'SciTools Understand'
  homepage 'https://scitools.com/features/'

  app 'Understand.app'
end
