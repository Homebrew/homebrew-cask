cask 'trenchbroom' do
  version '2.0.6'
  sha256 'd82454c40e90b620e1de5206379b995418287fa5cdc7b8ab169a47676f2a790b'

  # github.com/kduske/TrenchBroom was verified as official when first introduced to the cask
  url "https://github.com/kduske/TrenchBroom/releases/download/v#{version}/TrenchBroom-MacOSX-v#{version}-Release.dmg"
  appcast 'https://github.com/kduske/TrenchBroom/releases.atom'
  name 'TrenchBroom'
  homepage 'http://kristianduske.com/trenchbroom/'

  app 'TrenchBroom.app'
end
