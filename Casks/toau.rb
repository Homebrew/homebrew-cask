cask :v1 => 'toau' do
  version :latest
  sha256 :no_check

  url 'http://toauapp.com/download/Toau.zip'
  appcast 'http://toauapp.com/up/updates.xml'
  homepage 'http://toauapp.com'
  license :unknown

  app 'Toau.app'
end
