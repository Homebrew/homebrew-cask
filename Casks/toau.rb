cask 'toau' do
  version '1.6'
  sha256 'ef0e3044e1b76677db8f6466f593ed9691c6d457878f1bfa6ea69ff47e3a0228'

  url 'http://toauapp.com/download/Toau.zip'
  appcast 'http://25.io/toau/up/updates.xml',
          checkpoint: '45ca6d15d85ecd89368f4f99d9497d9311bca9c4e157a70d81f969287c50fb80'
  name 'Toau'
  homepage 'http://toauapp.com'
  license :commercial

  app 'Toau.app'
end
