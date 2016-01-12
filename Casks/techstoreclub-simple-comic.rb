cask 'techstoreclub-simple-comic' do
  version '1.7_252'
  sha256 '4ddd18a02a79fc8201824e6ab99291c6d4c8680f79f94bc372bf71f0535def35'

  url "https://github.com/techstoreclub/Simple-Comic/releases/download/#{version}/SimpleComic_#{version}.zip"
  appcast 'https://github.com/techstoreclub/Simple-Comic/releases.atom',
          :sha256 => '51602143066b8f43001ad350ae99d1e53418c4af4a443127f8a1b9f233c3bea2'
  name 'Simple Comic'
  homepage 'https://github.com/techstoreclub/Simple-Comic'
  license :mit

  app 'Simple Comic.app'
end
