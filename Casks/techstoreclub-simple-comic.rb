cask 'techstoreclub-simple-comic' do
  version '1.7_252'
  sha256 '4ddd18a02a79fc8201824e6ab99291c6d4c8680f79f94bc372bf71f0535def35'

  url "https://github.com/techstoreclub/Simple-Comic/releases/download/#{version}/SimpleComic_#{version}.zip"
  appcast 'http://www.dancingtortoise.com/simplecomic/simplecomic.xml',
          :sha256 => 'a60ac75aa2656f347cb8554c411d44dcc6500dd74e666aee5da1e54fb5928bf3'
  name 'Simple Comic'
  homepage 'https://github.com/techstoreclub/Simple-Comic'
  license :mit

  app 'Simple Comic.app'
end
