cask 'trenchbroom' do
  version '1.1.6_2759'
  sha256 '92eeb77b0a4b3be21421120d78e5996ff6d2e3f8c41afac6cbd8185f5798c67a'

  url "http://kristianduske.com/trenchbroom/downloads/mac/TrenchBroom_Mac_#{version}.zip"
  name 'TrenchBroom'
  homepage 'http://kristianduske.com/trenchbroom/'

  app 'TrenchBroom.app'
end
