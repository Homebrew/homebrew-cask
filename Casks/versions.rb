cask 'versions' do
  version :latest
  sha256 :no_check

  url 'http://versionsapp.com/redirect/versionslatest'
  appcast 'https://updates.blackpixel.com/updates?app=vs',
          :checkpoint => '2ed6c00361f6f454c263250fd3a2ef34d7534ea15895fb65742cf2683ead995e'
  name 'Versions'
  homepage 'http://versionsapp.com/'
  license :commercial

  app 'Versions.app'
end
