cask 'wesnoth' do
  version '1.14.4'
  sha256 '151f9e1be1d16e224a5d7f2a923f0ac69e3dce7952ed558375cdf3b7455df0e3'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  depends_on macos: '>= :mountain_lion'

  app 'Wesnoth.app'
end
