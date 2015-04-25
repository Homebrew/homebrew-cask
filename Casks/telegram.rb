cask :v1 => 'telegram' do
  version '0.8.7'
  sha256 'ad342077d93af9e1d62b746551a019fb7ee916fd2c8ba757c053c149f58b71ab'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  app 'Telegram.app'
end
