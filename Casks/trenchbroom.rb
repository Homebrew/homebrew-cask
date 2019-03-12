cask 'trenchbroom' do
  version '2019.1'
  sha256 '693d068d042e849321c9293cc4405033926188894bb7841464d66e8ba655d334'

  # github.com/kduske/TrenchBroom was verified as official when first introduced to the cask
  url "https://github.com/kduske/TrenchBroom/releases/download/v#{version}/TrenchBroom-MacOSX-v#{version}-Release.dmg"
  appcast 'https://github.com/kduske/TrenchBroom/releases.atom'
  name 'TrenchBroom'
  homepage 'http://kristianduske.com/trenchbroom/'

  app 'TrenchBroom.app'
end
