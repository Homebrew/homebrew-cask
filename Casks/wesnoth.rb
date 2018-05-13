cask 'wesnoth' do
  version '1.14.1a'
  sha256 'd76d60492546877b015b6aa185c0e500e64c39a643a1137f89bf4eedd757d89c'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss',
          checkpoint: 'a5501b27da01e08bad9378b822e849f205d25427499e7bcf80a2c47591c616da'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  depends_on macos: '>= :mountain_lion'

  app 'Wesnoth.app'
end
