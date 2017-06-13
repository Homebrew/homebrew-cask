cask 'track-o-bot' do
  version '0.8.6'
  sha256 '050ad7eda093d9eb3c44f9033291f0928512721162c8a2474b2fb55b52067eb2'

  # github.com/stevschmid/track-o-bot was verified as official when first introduced to the cask
  url "https://github.com/stevschmid/track-o-bot/releases/download/#{version}/Track-o-Bot_#{version}.dmg"
  appcast 'https://github.com/stevschmid/track-o-bot/releases.atom',
          checkpoint: '2d0e7b3d56f1ddf9ca07cea3a3ff473bc7a3cebf769c024dc7ad8df6ee79ed42'
  name 'Track-o-Bot'
  homepage 'https://trackobot.com/'

  app 'Track-o-Bot.app'
end
