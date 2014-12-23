cask :v1 => 'telegram-desktop' do
  version '0.7.4'
  sha256 'ed3252a04c99594e4177cf5c4d8b14bfc958a6b61e9801f4bd256755a147bc13'

  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  homepage 'https://desktop.telegram.org/'
  license :oss

  app 'Telegram.app'
end
