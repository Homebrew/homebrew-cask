cask 'twitchapp' do
  version :latest
  sha256 :no_check

  url 'https://updates.twitchapp.net/mac/Twitch.dmg'
  name 'Twitch'
  homepage 'https://app.twitch.tv/'

  app 'Twitch.app'
end
