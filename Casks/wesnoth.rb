cask 'wesnoth' do
  version '1.13.8'
  sha256 'df98a343ac2d83fb5f4144fb79379afa827c57cb8c68c3eaa29a2afb706352b5'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss',
          checkpoint: '23497792e09d8ffeec2329c807e16a429f9694dc496649add9e23c753f369829'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  app 'Wesnoth.app'
end
