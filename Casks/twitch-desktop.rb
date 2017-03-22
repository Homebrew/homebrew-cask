cask 'twitch-desktop' do
  version :latest
  sha256 'e39c5c748be23cd6bf4e0164aa26575f7d86473994f9d39c13e44b5bd0fbadac'

  # updates.twitchapp.net was verified as official when first introduced to the cask
  url 'https://updates.twitchapp.net/mac/Twitch.dmg'
  name 'Twitch Desktop App'
  homepage 'https://app.twitch.tv/'

  app 'Twitch.app'
end
