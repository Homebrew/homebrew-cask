cask 'vyprvpn' do
  version '3.3.0.7962'
  sha256 '84bab2c9496c8fb5ff49af66e28da35626e17f730367685ee54afdce5683a0db'

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  appcast 'https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac-feed.xml'
  name 'VyprVPN'
  homepage 'https://www.goldenfrog.com/vyprvpn'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'VyprVPN.app'

  uninstall quit:      'com.goldenfrog.VyprVPN*',
            launchctl: [
                         'vyprvpnservice',
                         'com.goldenfrog.resourcewatchdog',
                         'com.goldenfrog.VyprVPNUserAgent',
                       ],
            kext:      'com.goldenfrog.VyprVPNMalwareFilter'

  zap trash:     [
                   '/Library/LaunchDaemons/vyrpvpnservice.plist',
                   '/Library/PrivilegedHelperTools/vyprvpnservice',
                   '~/Library/Caches/com.goldenfrog.VyprVPN',
                   '~/Library/LaunchAgents/com.goldenfrog.VyprVPNUserAgent.plist',
                   '~/Library/Logs/GoldenFrog/VyprVPN.log',
                   '~/Library/Preferences/com.goldenfrog.VyprVPN.plist',
                 ],
      kext:      [
                   'net.sf.tuntaposx.tap',
                   'net.sf.tuntaposx.tun',
                 ],
      launchctl: 'org.openvpn'
end
