cask 'trenchbroom' do
  version '1.1.6_2759'
  sha256 '92eeb77b0a4b3be21421120d78e5996ff6d2e3f8c41afac6cbd8185f5798c67a'

  url "http://kristianduske.com/trenchbroom/downloads/macosx/stable/TrenchBroom_Mac_#{version}.zip"
  appcast 'https://github.com/kduske/TrenchBroom/releases.atom',
          checkpoint: '73154a4bd9b4fa17f744edcaffcb556c0c7edc8932c8e7d24d60a0cbf666c7f0'
  name 'TrenchBroom'
  homepage 'http://kristianduske.com/trenchbroom/'

  app 'TrenchBroom.app'
end
