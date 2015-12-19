cask 'thaiwitter' do
  version :latest
  sha256 :no_check

  # dropbox.com is the official download host per the vendor homepage
  url 'https://dl.dropbox.com/u/25097375/thaiWitter/Builds/thaiWitter3.app.zip'
  name 'thaiWitter'
  homepage 'https://tw3.herokuapp.com/'
  license :mpl

  app 'thaiWitter3.app'
end
