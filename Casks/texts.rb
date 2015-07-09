cask :v1 => 'texts' do
  version '0.23.4'
  sha256 '6c8c58d6c1e40a0ab284283da5dd4249969ed53448fdf8797d0646ffd25d26db'

  url "http://www.texts.io/Texts-#{version}.dmg"
  name 'Texts'
  appcast 'http://www.texts.io/appcast-osx.xml',
          :sha256 => '9fc2a87f91f014f4183e195d5b65348ff9b8142f6917dc8f73f613dececc18a8'
  homepage 'http://www.texts.io'
  license :commercial

  app 'Texts.app'
end
