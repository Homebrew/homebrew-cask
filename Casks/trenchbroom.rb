cask 'trenchbroom' do
  version '1.1.6_2759'
  sha256 '92eeb77b0a4b3be21421120d78e5996ff6d2e3f8c41afac6cbd8185f5798c67a'

  url "http://kristianduske.com/trenchbroom/downloads/macosx/stable/TrenchBroom_Mac_#{version}.zip"
  appcast 'http://kristianduske.com/trenchbroom/downloads.php?platform=macosx',
          checkpoint: '6210328d2de8336ad34e088d64f927a86e0db81655865ed9507bcfe5e8ae1b78'
  name 'TrenchBroom'
  homepage 'http://kristianduske.com/trenchbroom/'

  app 'TrenchBroom.app'
end
