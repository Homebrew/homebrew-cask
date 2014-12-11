cask :v1 => 'toau' do
  version :latest
  sha256 :no_check

  url 'http://toauapp.com/download/Toau.zip'
  appcast 'http://toauapp.com/up/updates.xml'
  homepage 'http://toauapp.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Toau.app'
end
