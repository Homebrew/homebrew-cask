cask 'teeworlds' do
  version '0.6.5'
  sha256 '3bcfb67d1631c39a519d1c78876871eff0a150687eade01ff2c5553bcdc5b9d9'

  url "https://downloads.teeworlds.com/teeworlds-#{version}-osx.dmg"
  appcast 'https://teeworlds.com/?page=downloads'
  name 'Teeworlds'
  homepage 'https://www.teeworlds.com/'

  app 'teeworlds.app'
  app 'teeworlds_srv.app'
end
