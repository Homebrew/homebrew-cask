cask 'textroom' do
  version '0.6.5'
  sha256 'f220ca66340bb8b72416461d87504278b41b518ea35bd6b49c9aa195d4ccea3f'

  url "https://github.com/purplehuman/textroom/releases/download/0.8.2/textroom-#{version}.dmg"
  appcast 'https://github.com/purplehuman/textroom/releases.atom',
          checkpoint: 'bc611fa9b0ad600f3cb2f7365aac4aa9cda408ccde7fb67ed1c6a31fae887627'
  name 'TextRoom'
  homepage 'https://github.com/purplehuman/textroom'
  license :gpl

  app 'textroom.app'
end
