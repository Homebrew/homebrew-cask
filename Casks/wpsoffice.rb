cask 'wpsoffice' do
  version '2.1.0,3464'
  sha256 'f46ec300e8129c6c1972eee79b0e2208f5b93b7048d6fd43dca8b35752a09c65'

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
