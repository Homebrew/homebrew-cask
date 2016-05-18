cask 'track-o-bot' do
  version '0.8.0'
  sha256 'fa76dcef74efd0eac4d80c0445c0b7dde424e41e397b4dfc69c66e0a884d11aa'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/stevschmid/track-o-bot/releases/download/#{version}/Track-o-Bot_#{version}.dmg"
  appcast 'https://github.com/stevschmid/track-o-bot/releases.atom',
          checkpoint: '35d01d607d0515555e6794a12f5602ad31fe94657d5334ceb642f7ce1ea87ad5'
  name 'Track-o-Bot'
  homepage 'https://trackobot.com/'
  license :gpl

  app 'Track-o-Bot.app'
end
