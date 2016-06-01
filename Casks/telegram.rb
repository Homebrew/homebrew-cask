cask 'telegram' do
  version '0.9.49'
  sha256 'b70eaaf50674b5752b044bcbce3855de314c0e00e25a8e2f530658beeb324315'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
