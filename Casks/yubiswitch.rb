cask :v1 => 'yubiswitch' do
  version '0.7'
  sha256 '680577971e037ca52292e62809e0709adce1d79946a7d740627e83cda6d4d6ca'

  url "https://github.com/pallotron/yubiswitch/releases/download/v#{version}/yubiswitch_#{version}.dmg"
  homepage 'https://github.com/pallotron/yubiswitch'
  license :gpl

  app 'yubiswitch.app'
end
