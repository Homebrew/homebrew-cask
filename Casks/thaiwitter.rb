cask 'thaiwitter' do
  version :latest
  sha256 :no_check

  # dropbox.com/u/25097375 was verified as official when first introduced to the cask
  url 'https://dl.dropbox.com/u/25097375/thaiWitter/Builds/thaiWitter3.app.zip'
  name 'thaiWitter'
  homepage 'https://tw3.herokuapp.com/'

  app 'thaiWitter3.app'
end
