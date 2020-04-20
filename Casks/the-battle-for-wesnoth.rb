cask 'the-battle-for-wesnoth' do
  version '1.15.3'
  sha256 'cc20b350b6f91db207a6a1f2be16e4574f81eb8fc597111dd1470acfdf79e77f'

  # sourceforge.net/wesnoth/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  app 'The Battle for Wesnoth.app'
end
