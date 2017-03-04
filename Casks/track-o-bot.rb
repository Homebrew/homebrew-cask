cask 'track-o-bot' do
  version '0.8.6'
  sha256 '050ad7eda093d9eb3c44f9033291f0928512721162c8a2474b2fb55b52067eb2'

  # github.com/stevschmid/track-o-bot was verified as official when first introduced to the cask
  url "https://github.com/stevschmid/track-o-bot/releases/download/#{version}/Track-o-Bot_#{version}.dmg"
  appcast 'https://github.com/stevschmid/track-o-bot/releases.atom',
          checkpoint: '1962fe0965f3939f91f2418a2c26967c99a2bd109dd9441454da612eedc176e6'
  name 'Track-o-Bot'
  homepage 'https://trackobot.com/'

  app 'Track-o-Bot.app'
end
