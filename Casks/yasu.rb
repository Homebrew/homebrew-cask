cask :v1 => 'yasu' do
  version :latest
  sha256 :no_check

  url 'http://yasuapp.net/files/Yasu.zip'
  homepage 'http://yasuapp.net'
  license :unknown

  app 'Yasu.app'
end
