cask :v1 => 'yubiswitch' do
  version '0.8'
  sha256 '590a89bea366f126044507226163499ae639a6ceb729fa03f93d24250f67066e'

  url "https://github.com/pallotron/yubiswitch/releases/download/v#{version}/yubiswitch_#{version}.dmg"
  name 'yubiswitch'
  appcast 'https://github.com/pallotron/yubiswitch/releases.atom'
  homepage 'https://github.com/pallotron/yubiswitch'
  license :gpl

  app 'yubiswitch.app'
end
