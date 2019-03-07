cask 'tutanota-desktop' do
  version ':latest'
  sha256 'bc72bb07bb0055cc0d757d82504a561af66abf88df51707fff3029a804f267de'

  # URL_SECTION was verified as official when first introduced to the cask
  url 'https://mail.tutanota.com/desktop/tutanota-desktop-mac.zip'
  name 'Tutanota Desktop'
  homepage 'https://tutanota.com/blog/posts/desktop-clients/'

  app 'Tutanota Desktop.app'
end
