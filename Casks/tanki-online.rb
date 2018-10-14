cask 'tanki-online' do
  version '3'
  sha256 '091b16df7f7a68bc0637c24923836d7965fd4c6feab7655013bb48beea6f51c4'

  url "https://s.eu.tankionline.com/resources/client/#{version}/mac/tankionline_eu.dmg"
  name 'Tanki Online'
  homepage 'https://tankionline.com/'

  app 'Tanki Online.app'

  zap trash: [
               '~/Library/Application Support/TankiOnline/',
               '~/Library/Caches/TankiOnline/',
             ]
end
