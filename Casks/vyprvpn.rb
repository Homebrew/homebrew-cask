cask 'vyprvpn' do
  version '3.0.0.7281'
  sha256 '1367d62b6d6727369fccb2e6a9d1e97be76f7d0b2c452484ecf0c29ed7392d23'

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  appcast 'https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac-feed.xml'
  name 'VyprVPN'
  homepage 'https://www.goldenfrog.com/vyprvpn'

  auto_updates true

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
