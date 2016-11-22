cask 'texts' do
  version '1.4'
  sha256 '410a789d2d877505c540e9562162596dbfae4f7454511531015ec1ea18f959ac'

  url "http://www.texts.io/Texts-#{version}.dmg"
  appcast 'http://www.texts.io/appcast-osx.xml',
          checkpoint: '47e1ffeedbbc49ee19a70acf9aee9fe0a7df00ce60e23b427433fe5536add962'
  name 'Texts'
  homepage 'http://www.texts.io'

  app 'Texts.app'
end
