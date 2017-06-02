cask 'wesnoth' do
  version '1.12.6'
  sha256 'c94fe7880b1ed0f52e31ad570d3f082412ffbeb9d7ddadf0c64d501dfc1f0589'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss',
          checkpoint: '6ab872944613cebe3c54f7922e42f01e3122841a526699ccea41373f258c2ea0'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  app 'Wesnoth.app'
end
