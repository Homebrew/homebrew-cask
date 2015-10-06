cask :v1 => 'techstoreclub-simple-comic' do
  version '1.7_252'
  sha256 '4ddd18a02a79fc8201824e6ab99291c6d4c8680f79f94bc372bf71f0535def35'

  url 'https://github.com/techstoreclub/Simple-Comic/releases/download/1.7_252/SimpleComic_1.7_252.zip'
  name 'Simple Comic'
  appcast 'http://www.dancingtortoise.com/simplecomic/simplecomic.xml',
          :sha256 => '9ba042626c87499a2fb41a3fc063ee1cd22153518c38ae3fe151e7c9ebbf0be3'
  homepage 'https://github.com/techstoreclub/Simple-Comic'
  license :mit

  app 'Simple Comic.app'
end
