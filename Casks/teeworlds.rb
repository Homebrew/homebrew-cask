cask 'teeworlds' do
  version '0.7.3.1'
  sha256 '3edc2b2bea2f62b8379c6db32314608aaa3bc2a496affb88732921e52d2d6c03'

  url "https://downloads.teeworlds.com/teeworlds-#{version}-osx.dmg"
  appcast 'https://teeworlds.com/?page=downloads'
  name 'Teeworlds'
  homepage 'https://www.teeworlds.com/'

  app 'Teeworlds.app'
  app 'Teeworlds Server.app'
end
