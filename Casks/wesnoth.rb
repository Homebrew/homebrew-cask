cask 'wesnoth' do
  version '1.12.6'
  sha256 'c94fe7880b1ed0f52e31ad570d3f082412ffbeb9d7ddadf0c64d501dfc1f0589'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss',
          checkpoint: '89627cdd04c99f01f2cd150189e8de27f7efe76b0dfda47219722360a734c108'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  app 'Wesnoth.app'
end
