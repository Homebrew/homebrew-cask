cask 'teeworlds' do
  version '0.6.4'
  sha256 'cb638bbe6f042262c4f8c25f913209e2c4b2d96efe9a8191d4acea6988572a6c'

  url "https://downloads.teeworlds.com/teeworlds-#{version}-osx.dmg"
  appcast 'https://www.teeworlds.com/?page=downloads',
          checkpoint: 'f6bee25b48abb654d415cea3513e353e4c374594c4f2af9a15012d9ae5d02e33'
  name 'Teeworlds'
  homepage 'https://www.teeworlds.com/'

  app 'Teeworlds.app'
  app 'Teeworlds Server.app'
end
