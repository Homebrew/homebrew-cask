cask :v1 => 'tactor' do
  version :latest
  sha256 :no_check

  # dropbox is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/7614970/Tactor.zip'
  homepage 'http://onflapp.wordpress.com/tactor/'
  license :unknown

  app 'Tactor.app'
end
