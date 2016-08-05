cask 'yep' do
  version :latest
  sha256 :no_check

  url 'https://www.ironicsoftware.com/downloads/Yep.zip'
  name 'Yep'
  homepage 'https://www.ironicsoftware.com/yep/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Yep.app'
end
