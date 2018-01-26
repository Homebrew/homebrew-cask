cask 'texts' do
  version '1.4.3'
  sha256 '4ebdb032d7a4affad782b0dce6d236b3c7afc019e29b8451f410e461873dae7f'

  url "http://www.texts.io/Texts-#{version}.dmg"
  appcast 'http://www.texts.io/appcast-osx.xml',
          checkpoint: '91d2b8af0ecb25f4809d72678902bc068c0141a59b184a701646e87d64fe9cff'
  name 'Texts'
  homepage 'http://www.texts.io/'

  app 'Texts.app'
end
