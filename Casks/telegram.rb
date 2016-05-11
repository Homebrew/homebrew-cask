cask 'telegram' do
  version '0.9.48'
  sha256 '34fd43368f13507f954ed42a382f28305e38f2a6643c90d621519184b44399c4'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
