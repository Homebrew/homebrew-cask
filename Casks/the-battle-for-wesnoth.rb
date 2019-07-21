cask 'the-battle-for-wesnoth' do
  version '1.14.8a'
  sha256 '76ec73996376b4b4cf1f40e5a19b9c5e9941690abd610869c369881a5bede28f'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  app 'The Battle for Wesnoth.app'
end
