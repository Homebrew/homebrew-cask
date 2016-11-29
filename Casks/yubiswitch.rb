cask 'yubiswitch' do
  version '0.12'
  sha256 '691ff7017c000211587217c60a6a9f352b3cb8d9ee2ce099f01d096d794a01ff'

  url "https://github.com/pallotron/yubiswitch/releases/download/v#{version}/yubiswitch_#{version}.dmg"
  appcast 'https://github.com/pallotron/yubiswitch/releases.atom',
          checkpoint: '3c81594845490b31f3154b86af8971af304dfd6ee464909110452f745503d558'
  name 'yubiswitch'
  homepage 'https://github.com/pallotron/yubiswitch'

  app 'yubiswitch.app'
end
