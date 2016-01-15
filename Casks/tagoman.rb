cask 'tagoman' do
  version :latest
  sha256 :no_check

  # dropboxusercontent.com is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/7614970/TagoMan.zip'
  appcast 'https://onflapp.appspot.com/tagoman',
          :checkpoint => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'TagoMan'
  homepage 'https://onflapp.wordpress.com/tagoman/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TagoMan.app'
end
