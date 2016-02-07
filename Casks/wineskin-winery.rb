cask 'wineskin-winery' do
  version '1.7'
  sha256 'ef3ae1fe17a7bc622a59171985f304f506aea7ca0ad342281536dac8609eac32'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/wineskin/Wineskin%20Winery.app%20Version%20#{version}.zip"
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
