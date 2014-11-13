cask :v1 => 'tagoman' do
  version :latest
  sha256 :no_check

  # dropbox is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/7614970/TagoMan.zip'
  homepage 'http://onflapp.wordpress.com/tagoman'
  license :unknown

  app 'TagoMan.app'
end
