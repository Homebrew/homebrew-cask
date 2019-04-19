cask 'wps-office' do
  version '1.0.1(1354)'
  sha256 '6437bc2dd67e72e6a36c22435f0a7657dcefa4a1cb63029c65c98ee9979091cd'

  # package.mac.wpscdn.cn was verified as official when first introduced to the cask
  url "http://package.mac.wpscdn.cn/mac_wps_pkg/1.0.1/WPS_Office_#{version}.dmg"
  name 'WPS Office'
  homepage 'https://www.wps.cn/product/wpsmac/'

  app 'wpsoffice.app'

  uninstall quit: 'com.kingsoft.wpsoffice.mac'

  zap trash: [
               '~/Library/Containers/com.kingsoft.wpsoffice.mac',
             ]
end
