cask 'toau' do
  version :latest
  sha256 :no_check

  url 'http://toauapp.com/download/Toau.zip'
  appcast 'http://toauapp.com/up/updates.xml'
  name 'Toau'
  homepage 'http://toauapp.com'
  license :commercial

  app 'Toau.app'
end
