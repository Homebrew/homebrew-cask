cask 'wpsoffice' do
  version '1.4.1.2106'
  sha256 'a9efbfe0e4d9837a550b3558f366946130271d67ba20cecc7660400c35df8cc0'

  # wdl1.pcfg.cache.wpscdn.com was verified as official when first introduced to the cask
  url "https://wdl1.pcfg.cache.wpscdn.com/wpsdl/macwpsoffice/download/#{version}/WPSOffice_#{version}.dmg"
  appcast 'https://www.wps.com/mac/'
  name 'WPS Office'
  homepage 'https://www.wps.com/en-US/mac/'

  depends_on macos: '>= :sierra'

  app 'wpsoffice.app'

  uninstall quit: 'com.kingsoft.wpsoffice.mac'

  zap trash: '~/Library/Containers/com.kingsoft.wpsoffice.mac'
end
