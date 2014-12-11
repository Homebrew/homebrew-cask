cask :v1 => 'tagoman' do
  version :latest
  sha256 :no_check

  # dropboxusercontent.com is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/7614970/TagoMan.zip'
  homepage 'http://onflapp.wordpress.com/tagoman'
  license :unknown    # todo: improve this machine-generated value

  app 'TagoMan.app'
end
