cask 'the-battle-for-wesnoth' do
  version '1.15.1'
  sha256 '710ddbf03c979f6c3aa64e39a8062fd540cf42c95a30fd18c0d69c607733915e'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  app 'The Battle for Wesnoth.app'
end
