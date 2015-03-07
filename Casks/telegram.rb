cask :v1 => 'telegram' do
  version '0.7.17'
  sha256 '8c724f209947f224b7fea4a88f56e8c54c593fd50b28455cebf6a3462f47d395'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  app 'Telegram.app'
end
