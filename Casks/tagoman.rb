cask :v1 => 'tagoman' do
  version :latest
  sha256 :no_check

  # dropboxusercontent.com is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/7614970/TagoMan.zip'
  name 'TagoMan'
  appcast 'https://onflapp.appspot.com/tagoman',
          :sha256 => 'b6e866d06fe73d9d2915e04cde5cb0270b452382b9cd9d0c7fc65d5735c15443'
  homepage 'https://onflapp.wordpress.com/tagoman/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TagoMan.app'
end
