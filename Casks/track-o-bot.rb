cask 'track-o-bot' do
  version '0.9.0'
  sha256 'b1e7eeea98b869e1526ad2babcc01b818e177bbe129acb361029a5477c43b409'

  # github.com/stevschmid/track-o-bot was verified as official when first introduced to the cask
  url "https://github.com/stevschmid/track-o-bot/releases/download/#{version}/Track-o-Bot_#{version}.dmg"
  appcast 'https://github.com/stevschmid/track-o-bot/releases.atom',
          checkpoint: '48df135240023aaf90a27ba89429853409947748019c9a42979242460ebf7473'
  name 'Track-o-Bot'
  homepage 'https://trackobot.com/'

  app 'Track-o-Bot.app'
end
