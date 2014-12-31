cask :v1 => 'yasu' do
  version :latest
  sha256 :no_check

  url 'http://yasuapp.net/files/Yasu.zip'
  homepage 'http://yasuapp.net'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Yasu.app'
end
