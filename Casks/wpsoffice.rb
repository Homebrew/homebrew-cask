cask 'wpsoffice' do
  version '1.5.0(2161)'
  sha256 'f05f81fe538636f68462dbeca82d1655756499490d74338b0a9b5dbbf5b05d91'

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
