cask 'wifispoof' do
  version :latest
  sha256 :no_check

  # sweetpproductions.com was verified as official when first introduced to the cask
  url 'https://sweetpproductions.com/products/wifispoof3/WiFiSpoof3.dmg'
  name 'WiFiSpoof'
  homepage 'https://wifispoof.com/'

  auto_updates true

  app 'WiFiSpoof.app'
end
