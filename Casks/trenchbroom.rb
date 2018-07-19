cask 'trenchbroom' do
  version '2.0.3'
  sha256 '338a0ed80b86650b0aa3e787ac40d8e5fb77e60062f63a398b6b0d74744bd1c4'

  # github.com/kduske/TrenchBroom was verified as official when first introduced to the cask
  url "https://github.com/kduske/TrenchBroom/releases/download/v#{version}/TrenchBroom-MacOSX-v#{version}-Release.dmg"
  appcast 'https://github.com/kduske/TrenchBroom/releases.atom'
  name 'TrenchBroom'
  homepage 'http://kristianduske.com/trenchbroom/'

  app 'TrenchBroom.app'
end
