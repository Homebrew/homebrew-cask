cask :v1 => 'yubiswitch' do
  version '0.9'
  sha256 '6ba3637fd48e8c8827136cb84e64d337a653112253f403121e4f3af0dd2fde48'

  url "https://github.com/pallotron/yubiswitch/releases/download/v#{version}_fix/yubiswitch_#{version}.dmg"
  appcast 'https://github.com/pallotron/yubiswitch/releases.atom'
  name 'yubiswitch'
  homepage 'https://github.com/pallotron/yubiswitch'
  license :gpl

  app 'yubiswitch.app'
end
