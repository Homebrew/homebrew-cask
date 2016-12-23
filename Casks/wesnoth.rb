cask 'wesnoth' do
  version '1.13.6'
  sha256 'eb5c76cf7cd83a582bdef19d6a7c8b165eb69b4024ceab5ea1987b10753a15e8'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss',
          checkpoint: 'e0e6ab9b2945b0b88f059f3a7d2d2702d869a00c3f85ac7a2b17d16019b81597'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  app 'Wesnoth.app'
end
