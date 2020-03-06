cask 'wpsoffice' do
  version '2.0.1,3256'
  sha256 'c8e47b9201cde78c379154027541b8eb6486f8c9a5170138123552ab6c01eeb6'

  # package.mac.wpscdn.cn was verified as official when first introduced to the cask
  url "http://package.mac.wpscdn.cn/mac_wps_pkg/#{version.before_comma}/WPS_Office_#{version.before_comma}(#{version.after_comma}).dmg"
  appcast 'https://www.wps.cn/product/wpsmac/'
  name 'WPS Office'
  homepage 'https://www.wps.cn/product/wpsmac/'

  depends_on macos: '>= :sierra'

  app 'wpsoffice.app'

  uninstall quit: 'com.kingsoft.wpsoffice.mac'

  zap trash: '~/Library/Containers/com.kingsoft.wpsoffice.mac'
end
