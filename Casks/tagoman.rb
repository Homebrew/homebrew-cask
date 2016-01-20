cask 'tagoman' do
  version '1.0'
  sha256 'a9cff4b2b948d668ed4594d72d3616fcda96d1faa7038165440aaa523208f924'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/7614970/TagoMan.zip'
  appcast 'https://onflapp.appspot.com/tagoman',
          checkpoint: '98ec87defcd27b48c9a6e851ec6160f66feaac0e90d32259dd6506d7e9a580a7'
  name 'TagoMan'
  homepage 'https://onflapp.wordpress.com/tagoman/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TagoMan.app'
end
