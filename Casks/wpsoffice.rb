cask 'wpsoffice' do
  version '2.2.0,3644'
  sha256 '05281fc94e480bafea239db891269eb1c700ab6d5a700b7990bfcb2845af3d7d'

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
