cask 'telegram' do
  version '0.9.18'
  sha256 '5faefc8544f5f6aa0b680fc6276183f8c12f9247ad1bfaf78e2e31e812513f3e'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
