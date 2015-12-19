cask 'textroom' do
  version '0.6.5'
  sha256 'f220ca66340bb8b72416461d87504278b41b518ea35bd6b49c9aa195d4ccea3f'

  url "https://textroom.googlecode.com/files/textroom-#{version}.dmg"
  name 'TextRoom'
  homepage 'https://code.google.com/p/textroom/'
  license :gpl

  app 'textroom.app'
end
