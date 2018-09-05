cask 'tigervpn' do
  version :latest
  sha256 :no_check

  url 'https://www.tigervpn.com/apps/download?os=OS+X'
  name 'tigerVPN'
  homepage 'https://www.tigervpn.com/'

  app 'tigerVPN.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.tigeratwork.tigerVPNmacHelper',
            launchctl: 'com.tigeratwork.tigerVPNmacHelper'

  zap trash: [
               '~/Library/Application Support/tigerVPN',
               '~/Library/Application Support/com.apple.toolsQA.CocoaApp_CD/tigerVPN.storedata',
               '~/Library/Application Support/com.tigeratwork.tigerVPNmac',
               '~/Library/Preferences/com.tigeratwork.tigerVPNmac.plist',
               '~/Library/tigerVPN',
               '~/Library/Caches/com.crashlytics.data/com.tigeratwork.tigerVPNmac',
               '~/Library/Caches/tigerVPN',
               '~/Library/Caches/com.tigeratwork.tigerVPNmac',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.tigeratwork.tigerVPNmac',
             ]
end
