cask 'track-o-bot' do
  version '0.8.5'
  sha256 '7e9185d980e3864feb67a8e60ba0c33ca53723a57b69115b0506f65f7a4ffc7e'

  # github.com/stevschmid/track-o-bot was verified as official when first introduced to the cask
  url "https://github.com/stevschmid/track-o-bot/releases/download/#{version}/Track-o-Bot_#{version}.dmg"
  appcast 'https://github.com/stevschmid/track-o-bot/releases.atom',
          checkpoint: 'fc6fb048cf4efcf442067a33d079f08dc65948da01f4d9ac58b9761428a72408'
  name 'Track-o-Bot'
  homepage 'https://trackobot.com/'

  app 'Track-o-Bot.app'
end
