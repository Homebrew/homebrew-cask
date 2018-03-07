cask 'tg-pro' do
  version '2.29'
  sha256 '5a5d26edbb6d03e755830f6631611541c0a7985652b6464941a60ebc5ee60688'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro.xml',
          checkpoint: 'MCwCFEmZk2pWUPNl8+OSEnzoI6Y+EQSsAhQcdrklB2Aw0ZA1har1OoV+2/1Eww=='
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'

  app 'TG Pro.app'

  zap trash: [
               '/Library/LaunchDaemons/com.tunabellysoftware.TGFanHelper.plist',
               '/Library/PrivilegedHelperTools/com.tunabellysoftware.TGFanHelper',
               '~/Library/Application Support/TG Pro',
               '~/Library/Caches/com.tunabellysoftware.tgpro',
               '~/Library/Cookies/com.tunabellysoftware.tgpro.binarycookies',
               '~/Library/Preferences/com.tunabellysoftware.tgpro.plist',
             ]
end
