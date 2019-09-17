cask 'wpsoffice' do
  version '1.5.2(2273)'
  sha256 'afe7a31ab656e2ba50c57b3a6ca9f41d5ba6e84301a5bd4eec8f0fb84099788b'

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
