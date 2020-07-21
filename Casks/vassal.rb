cask 'vassal' do
  version '3.3.2'
  sha256 '669bc1bfb3da870a13b0fbe0e9438d9b4b0c5ac660588d10d88ac62db2357391'

  # github.com/vassalengine/vassal was verified as official when first introduced to the cask
  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macosx.dmg"
  appcast 'https://github.com/vassalengine/vassal/releases.atom'
  name 'VASSAL'
  homepage 'http://www.vassalengine.org/'

  app 'VASSAL.app'
end
