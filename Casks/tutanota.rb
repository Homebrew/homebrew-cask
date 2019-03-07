cask 'tutanota' do
  version :latest
  sha256 :no_check

  url 'https://mail.tutanota.com/desktop/tutanota-desktop-mac.zip'
  name 'Tutanota Desktop'
  homepage 'https://tutanota.com/'

  app 'Tutanota Desktop.app'
end
