cask 'wpsoffice' do
  version '2.0.2,3356'
  sha256 'c1eebdeda53a786af2f175b0f1a82b098fe31543b359c96379887f11b2b630e6'

  # wdl1.pcfg.cache.wpscdn.com was verified as official when first introduced to the cask
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
