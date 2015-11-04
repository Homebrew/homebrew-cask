cask :v1 => 'versions' do
  version :latest
  sha256 :no_check

  url 'http://versionsapp.com/redirect/versionslatest'
  appcast 'https://updates.blackpixel.com/updates?app=vs'
  name 'Versions'
  homepage 'http://versionsapp.com/'
  license :commercial

  app 'Versions.app'
end
