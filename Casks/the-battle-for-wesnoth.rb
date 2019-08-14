cask 'the-battle-for-wesnoth' do
  version '1.15.0'
  sha256 '85ede0eae3bc2f04b81baf458697bd8c017bdffaa5aaa5674654ad51e6c89343'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  app 'The Battle for Wesnoth.app'
end
