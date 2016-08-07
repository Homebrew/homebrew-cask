cask 'wineskin-winery' do
  version '1.7'
  sha256 'ef3ae1fe17a7bc622a59171985f304f506aea7ca0ad342281536dac8609eac32'

  # sourceforge.net/wineskin was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wineskin/Wineskin%20Winery.app%20Version%20#{version}.zip"
  appcast 'https://sourceforge.net/projects/wineskin/rss',
          checkpoint: 'aadd186bd1dac57d6b4dd583b74dcb921755c9fa6d6a8bf09206dc03384190fd'
  name 'Wineskin Winery'
  homepage 'http://wineskin.urgesoftware.com/'
  license :gpl

  depends_on macos: '>= :snow_leopard'

  app 'Wineskin Winery.app'

  zap delete: [
                '~/Library/Application Support/Wineskin',
                '~/Library/Preferences/com.urgesoftware.wineskin.wineskin.plist',
                '~/Library/Caches/com.urgesoftware.wineskin.wineskinwinery',
                '~/Library/Saved Application State/com.urgesoftware.wineskin.wineskin.savedState',
              ],
      rmdir:  '~/Applications/Wineskin'
end
