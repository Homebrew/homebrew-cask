cask 'trenchbroom' do
  version '2019.5'
  sha256 'b33ce38dad1e461d09500360ee64841648af47aa501feba9791f9cf90b6333c9'

  # github.com/kduske/TrenchBroom was verified as official when first introduced to the cask
  url "https://github.com/kduske/TrenchBroom/releases/download/v#{version}/TrenchBroom-MacOSX-v#{version}-Release.dmg"
  appcast 'https://github.com/kduske/TrenchBroom/releases.atom'
  name 'TrenchBroom'
  homepage 'http://kristianduske.com/trenchbroom/'

  app 'TrenchBroom.app'
end
