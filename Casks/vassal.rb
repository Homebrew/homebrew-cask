cask 'vassal' do
  version '3.3.1'
  sha256 '0e211bef91631fc04c91610ce6ea842651074517637a265fe6d7fecda9349860'

  # github.com/vassalengine/vassal was verified as official when first introduced to the cask
  url "https://github.com/vassalengine/vassal/releases/download/#{version}/VASSAL-#{version}-macosx.dmg"
  appcast 'https://github.com/vassalengine/vassal/releases.atom'
  name 'VASSAL'
  homepage 'http://www.vassalengine.org/'

  app 'VASSAL.app'
end
