cask 'wpsoffice' do
  version '2.3.0,3826'
  sha256 '2dfb2472f65c3721db0aa7ab36d168c481b128ff4098d2f1ecc2c3126e791329'

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
