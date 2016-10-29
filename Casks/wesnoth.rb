cask 'wesnoth' do
  version '1.12.6'
  sha256 'c94fe7880b1ed0f52e31ad570d3f082412ffbeb9d7ddadf0c64d501dfc1f0589'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss',
          checkpoint: 'f40c089c249d75fe9705712377818685f702500c34ae2d6aeab165dafac249f1'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  app 'Wesnoth.app'
end
