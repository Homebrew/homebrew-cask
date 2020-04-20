cask 'wpsoffice' do
  version '2.1.1,3493'
  sha256 '1a0ebd021833034051bc241ba71dd37969fa3c388fb4d8906a053bb4c4ae4751'

  # wdl1.pcfg.cache.wpscdn.com/ was verified as official when first introduced to the cask
  url "https://wdl1.pcfg.cache.wpscdn.com/wpsdl/macwpsoffice/download/#{version.before_comma}.#{version.after_comma}/WPSOffice_#{version.before_comma}(#{version.after_comma}).dmg"
  name 'WPS Office'
  homepage 'https://www.wps.com/mac/'

  depends_on macos: '>= :sierra'

  app 'wpsoffice.app'

  uninstall quit: 'com.kingsoft.wpsoffice.mac.global'

  zap trash: [
               '~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.global',
               '~/Library/Containers/com.kingsoft.wpsoffice.mac.global',
             ]
end
