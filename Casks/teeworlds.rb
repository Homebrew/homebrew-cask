cask 'teeworlds' do
  version '0.7.4'
  sha256 '7fdf6f6349b6473f93bc67fbcf22442263e262e25d4dfa30986f14e35e17416f'

  url "https://downloads.teeworlds.com/teeworlds-#{version}-osx.dmg"
  appcast 'https://teeworlds.com/?page=downloads'
  name 'Teeworlds'
  homepage 'https://www.teeworlds.com/'

  app 'Teeworlds.app'
  app 'Teeworlds Server.app'
end
