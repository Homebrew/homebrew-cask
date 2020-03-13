cask 'vyprvpn' do
  version '3.4.0.8755'
  sha256 '5d27933b42c3bf3fbcff4e0eeb4ad41a1a87dd66f1b56bcb14cbd5f3c7ca06a9'

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
