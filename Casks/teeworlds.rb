cask 'teeworlds' do
  version '0.7.3'
  sha256 'ca22e3fcc3b244811be53e2783556a72b58bda863c02b7f0e77ed67d00032c73'

  url "https://downloads.teeworlds.com/teeworlds-#{version}-osx.dmg"
  appcast 'https://teeworlds.com/?page=downloads'
  name 'Teeworlds'
  homepage 'https://www.teeworlds.com/'

  app 'Teeworlds.app'
  app 'Teeworlds Server.app'
end
