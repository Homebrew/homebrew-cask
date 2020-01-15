cask 'wpsoffice' do
  version '1.9.1,2994'
  sha256 '0e24e91fba32b03e17c520b1037ca9c1df84042c9b6dc54812fb9da7496156b6'

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
