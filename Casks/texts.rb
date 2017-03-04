cask 'texts' do
  version '1.4.1'
  sha256 '9b0dd57f2c4ac50ca86dc99867f13d8f17e8a039fba73bf9b57f348c7aef48c1'

  url "http://www.texts.io/Texts-#{version}.dmg"
  appcast 'http://www.texts.io/appcast-osx.xml',
          checkpoint: '94f1c50ede418056a08da6ddcd3d459f9788efecde0310bd555477d5651cf326'
  name 'Texts'
  homepage 'http://www.texts.io/'

  app 'Texts.app'
end
