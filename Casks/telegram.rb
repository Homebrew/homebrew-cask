cask 'telegram' do
  version '0.9.50'
  sha256 'aa1f75ae14ffd3ddb9828dd6eef079356081e38551009d9e8118c952e3e62512'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram Desktop'
  homepage 'https://desktop.telegram.org/'
  license :gpl

  app 'Telegram.app'
end
