cask 'the-battle-for-wesnoth' do
  version '1.14.8'
  sha256 '6096e57d6295af33e44d41924ebff93f62c24672b288249acf8714889cf41b16'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  app 'The Battle for Wesnoth.app'
end
