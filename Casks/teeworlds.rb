cask 'teeworlds' do
  version '0.7.2'
  sha256 'af3b76c7b03e2338f0c8198de6d2a399eac9660ca8bd5dca4379f9d1f56bfc98'

  url "https://downloads.teeworlds.com/teeworlds-#{version}-osx.dmg"
  appcast 'https://teeworlds.com/?page=downloads'
  name 'Teeworlds'
  homepage 'https://www.teeworlds.com/'

  app 'Teeworlds.app'
  app 'Teeworlds Server.app'
end
