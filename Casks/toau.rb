cask 'toau' do
  version '1.6'
  sha256 'ef0e3044e1b76677db8f6466f593ed9691c6d457878f1bfa6ea69ff47e3a0228'

  # toauapp.com was verified as official when first introduced to the cask
  url 'http://toauapp.com/download/Toau.zip'
  appcast 'http://25.io/toau/up/updates.xml'
  name 'Toau'
  homepage 'http://25.io/toau/'

  app 'Toau.app'
end
