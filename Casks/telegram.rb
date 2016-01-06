cask 'telegram' do
  version '0.9.17'
  sha256 'e78f36628426bb4e842d7643ab1f2b46844cb1a65766393e0ffcdb73139f7a04'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  name 'Telegram Desktop'
  name 'tdesktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
