cask 'trenchbroom' do
  version '1.1.6_2759'
  sha256 '92eeb77b0a4b3be21421120d78e5996ff6d2e3f8c41afac6cbd8185f5798c67a'

  url "http://kristianduske.com/trenchbroom/downloads/macosx/stable/TrenchBroom_Mac_#{version}.zip"
  appcast 'https://github.com/kduske/TrenchBroom/releases',
          checkpoint: '1e001d2417809f5ec8d18aacc47042cfcc606aee375c3df56da58f60d521e1b3'
  name 'TrenchBroom'
  homepage 'http://kristianduske.com/trenchbroom/'

  app 'TrenchBroom.app'
end
