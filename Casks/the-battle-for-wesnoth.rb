cask 'the-battle-for-wesnoth' do
  version '1.15.2'
  sha256 '07d7424c3f0418f71441956c591e2d8170d309b354b59b8335d4693ea2309a79'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  app 'The Battle for Wesnoth.app'
end
