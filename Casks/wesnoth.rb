cask 'wesnoth' do
  version '1.14.5'
  sha256 'df4b728c896e0927f5e1caa0fb07da701830205f1c01682b90ac14927019a965'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  depends_on macos: '>= :mountain_lion'

  app 'Wesnoth.app'
end
