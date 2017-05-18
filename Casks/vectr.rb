cask 'vectr' do
  version '0.1.15'
  sha256 '3b5ebbfb7656ff722f0e0fdaf97500a9c9d6eeaeb9d7885aa00bcd6af8853862'

  url "http://download.vectr.com/desktop/#{version}/mac/Vectr-mac.dmg"
  name 'Vectr'
  homepage 'https://vectr.com/'

  app 'Vectr.app'
end
