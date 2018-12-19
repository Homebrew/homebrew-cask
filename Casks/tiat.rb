cask 'tiat' do
  version '1.3.1'
  sha256 'da394e36d42c3fa35429a0d0816085b2cd1dcfe13dabd91b1a4d8178411c9f9a'

  # storage.googleapis.com was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/alice-180810.appspot.com/Tiat-#{version}.dmg"
  name 'Tiat'
  homepage 'http://www.chthollystudio.com/tiat'

  app 'Tiat.app'
end
