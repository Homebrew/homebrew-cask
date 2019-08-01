cask 'wpsoffice' do
  version '1.4.0(1935)'
  sha256 '7220f1f13079cdbe8ab439e9e4eff0124c6831cfc35a1a8ecdbb23459db0c68e'

  # package.mac.wpscdn.cn was verified as official when first introduced to the cask
  url "http://package.mac.wpscdn.cn/mac_wps_pkg/#{version.major_minor_patch}/WPS_Office_#{version}.dmg"
  appcast 'https://www.wps.cn/product/wpsmac/'
  name 'WPS Office'
  homepage 'https://www.wps.cn/product/wpsmac/'

  depends_on macos: '>= :sierra'

  app 'wpsoffice.app'

  uninstall quit: 'com.kingsoft.wpsoffice.mac'

  zap trash: '~/Library/Containers/com.kingsoft.wpsoffice.mac'
end
