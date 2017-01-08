cask 'wifispoof' do
  version '3.0.2'
  sha256 'ee0b4e0941f20f4cd71b7f6fa4f56da695cd1d6e1c4e49daec3a460463bd9946'

  # sweetpproductions.com/products was verified as official when first introduced to the cask
  url "https://sweetpproductions.com/products/wifispoof#{version.major}/WiFiSpoof#{version.major}.dmg"
  appcast 'https://sweetpproductions.com/products/wifispoof3/appcast.xml',
          checkpoint: 'e4a7cf391172f201bbd706624b22df970cb05e7b095b05a45713744c66e3b58a'
  name 'WiFiSpoof'
  homepage 'https://wifispoof.com/'

  auto_updates true

  app 'WiFiSpoof.app'
end
