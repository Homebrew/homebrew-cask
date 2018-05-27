cask 'wesnoth' do
  version '1.14.2'
  sha256 'fb1a07d2f9fd37a98a8d79f47256316d7fa0167d11871048c1774549b7c71f25'

  # sourceforge.net/wesnoth was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wesnoth/Wesnoth_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/wesnoth/rss',
          checkpoint: 'b1040dfa8f8f05e4847b54f444d2d08386ccddc6daf42415f1ca635d68fd000e'
  name 'The Battle for Wesnoth'
  homepage 'https://wesnoth.org/'

  depends_on macos: '>= :mountain_lion'

  app 'Wesnoth.app'
end
