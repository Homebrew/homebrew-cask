cask 'telegram' do
  version '0.9.32'
  sha256 '812136ba30ca788c0b85ed6f2a0a232e50731fd64acbb55f17b5693eb49c3584'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
