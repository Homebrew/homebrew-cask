cask 'techstoreclub-simple-comic' do
  version '1.7_252'
  sha256 '4ddd18a02a79fc8201824e6ab99291c6d4c8680f79f94bc372bf71f0535def35'

  url "https://github.com/techstoreclub/Simple-Comic/releases/download/#{version}/SimpleComic_#{version}.zip"
  appcast 'https://github.com/techstoreclub/Simple-Comic/releases.atom',
          checkpoint: '3bb3b59bebce4cb396c2f0debeb04510261b6d9e0d0a071bef6de9a8d076fdb5'
  name 'Simple Comic'
  homepage 'https://github.com/techstoreclub/Simple-Comic'
  license :mit

  app 'Simple Comic.app'
end
