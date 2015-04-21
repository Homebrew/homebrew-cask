cask :v1 => 'telegram' do
  version '0.8.4'
  sha256 '9489789f458f280827397564c4cf55b864da54598f703380e41060da6c245a9f'

  # tdesktop.com is the official download host per the vendor homepage
  url "https://updates.tdesktop.com/tmac/tsetup.#{version}.dmg"
  name 'Telegram'
  homepage 'https://telegram.org/'
  license :gpl

  app 'Telegram.app'
end
