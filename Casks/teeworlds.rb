cask 'teeworlds' do
  version '0.6.4'
  sha256 'cb638bbe6f042262c4f8c25f913209e2c4b2d96efe9a8191d4acea6988572a6c'

  url "https://downloads.teeworlds.com/teeworlds-#{version}-osx.dmg"
  appcast 'https://www.teeworlds.com/?page=downloads',
          checkpoint: '801d1139239193f9036eaf817bbb1159546b05ae7e2b7d8c7490374b9bdf9f46'
  name 'Teeworlds'
  homepage 'https://www.teeworlds.com/'

  app 'Teeworlds.app'
  app 'Teeworlds Server.app'
end
