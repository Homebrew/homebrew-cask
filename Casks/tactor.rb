cask 'tactor' do
  version :latest
  sha256 :no_check

  # dropbox is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/7614970/Tactor.zip'
  appcast 'https://onflapp.appspot.com/tactor',
          :checkpoint => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'Tactor'
  homepage 'https://onflapp.wordpress.com/tactor/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tactor.app'
end
