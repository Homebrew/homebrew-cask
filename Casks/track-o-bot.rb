cask 'track-o-bot' do
  version '0.8.3'
  sha256 '44afc803cb49c3852d612c867824a716550076eabd80903cf3614d6e6532386d'

  # github.com/stevschmid/track-o-bot was verified as official when first introduced to the cask
  url "https://github.com/stevschmid/track-o-bot/releases/download/#{version}/Track-o-Bot_#{version}.dmg"
  appcast 'https://github.com/stevschmid/track-o-bot/releases.atom',
          checkpoint: '50f779effdc72453fc06d6b2593dce301169fc0574d1ae68e7ad346cb948a651'
  name 'Track-o-Bot'
  homepage 'https://trackobot.com/'

  app 'Track-o-Bot.app'
end
