cask 'unetbootin' do
  version '625'
  sha256 '4568b7b0cef1c240a16b6e03cb5f2cf19f50385645abd82c9206db7aff7d9ddf'

  # launchpad.net/unetbootin was verified as official when first introduced to the cask
  url "http://launchpad.net/unetbootin/trunk/#{version}/+download/unetbootin-mac-#{version}.dmg"
  name 'UNetbootin'
  homepage 'https://unetbootin.github.io/'

  app 'unetbootin.app'
end
