cask 'twitch' do
  version :latest
  sha256 :no_check

  url 'http://twitchapp.com/Twitch.app.zip'
  name 'Twitch'
  homepage 'http://twitchapp.com'

  app 'Twitch.app'
end
