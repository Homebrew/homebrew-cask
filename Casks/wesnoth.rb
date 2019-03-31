cask 'wesnoth' do
  version '1.14.6'
  sha256 'da59233f1e3648fc2aa8931dd8d472a6097a09c3bf2fe45895c2cad62f107fc0'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  app 'Wesnoth.app'
end
