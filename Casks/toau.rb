class Toau < Cask
  version 'latest'
  sha256 :no_check

  url 'http://toauapp.com/download/Toau.zip'
  appcast 'http://toauapp.com/up/updates.xml'
  homepage 'http://toauapp.com'

  app 'Toau.app'
end
