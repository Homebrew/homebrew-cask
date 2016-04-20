cask 'telegram' do
  version '0.9.44'
  sha256 'adc458677c4d7f6a80087e5f7025c972348ee01a766fbc6e9251da930e35fe68'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
