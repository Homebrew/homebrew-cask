cask :v1 => 'tsc-simple-comic' do
  version '1.7_252'
  sha256 '4ddd18a02a79fc8201824e6ab99291c6d4c8680f79f94bc372bf71f0535def35'

  url "https://github.com/techstoreclub/Simple-Comic/releases/download/#{version}/SimpleComic_#{version}.zip"
  name 'Simple Comic (Techstoreclub fork)'
  homepage 'https://github.com/techstoreclub/Simple-Comic'
  license :mit

  app 'Simple Comic.app'
end
