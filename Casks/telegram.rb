cask :v1 => 'telegram' do
  version '0.8.21'
  sha256 '343176aabd1a4451bda97d84e9f6090c973eb7613c0cdbfa464e0eba301fbaaa'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/c55f5e74ae5d0ad254df29f71a1b5f0e',
          :sha256 => 'f15dbd6d38563e5e5bd66c71fd02c0e319642233e4853672760a55e6e390684f'
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  app 'Telegram.app'
end
