cask 'track-o-bot' do
  version '0.7.1'
  sha256 '728add570b07f401dbccce81d8c0abb5cfb550b7b6c499680b504ae8ea82ec6a'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/stevschmid/track-o-bot/releases/download/#{version}/Track-o-Bot_#{version}.dmg"
  appcast 'https://github.com/stevschmid/track-o-bot/releases.atom',
          checkpoint: '53be5e4fccfa908f527f89e71383505904e6dc274c8e96e79125f9a0c4fb04bd'
  name 'Track-o-Bot'
  homepage 'https://trackobot.com/'
  license :gpl

  app 'Track-o-Bot.app'
end
