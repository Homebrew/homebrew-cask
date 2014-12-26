cask :v1 => 'telegram' do
  version '0.7.4'
  sha256 'ed3252a04c99594e4177cf5c4d8b14bfc958a6b61e9801f4bd256755a147bc13'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  app 'Telegram.app'
end
