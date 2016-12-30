cask 'wesnoth' do
  version '1.12.6'
  sha256 'c94fe7880b1ed0f52e31ad570d3f082412ffbeb9d7ddadf0c64d501dfc1f0589'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss',
          checkpoint: 'e0e6ab9b2945b0b88f059f3a7d2d2702d869a00c3f85ac7a2b17d16019b81597'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  app 'Wesnoth.app'
end
