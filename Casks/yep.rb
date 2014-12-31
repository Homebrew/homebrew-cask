cask :v1 => 'yep' do
  version :latest
  sha256 :no_check

  url 'http://www.ironicsoftware.com/downloads/Yep.zip'
  homepage 'http://www.ironicsoftware.com/yep/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Yep.app'
end
