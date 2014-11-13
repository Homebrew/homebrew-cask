cask :v1 => 'thaiwitter' do
  version :latest
  sha256 :no_check

  # dropbox is the official download host per the vendor homepage
  url 'https://dl.dropbox.com/u/25097375/thaiWitter/Builds/thaiWitter3.app.zip'
  homepage 'https://tw3.herokuapp.com/'
  license :unknown

  app 'thaiWitter3.app'
end
