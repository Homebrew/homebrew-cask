cask 'yate' do
  version '5.0.3'
  sha256 '1403ff3993774098bf830d043f0f2230563b3cc25ccb260d559f84630749ed13'

  url 'https://2manyrobots.com/Updates/Yate/Yate.zip'
  appcast 'https://2manyrobots.com/Updates/Yate/appcast.xml'
  name 'Yate'
  homepage 'https://2manyrobots.com/yate/'

  auto_updates true

  app 'Yate.app'
end
