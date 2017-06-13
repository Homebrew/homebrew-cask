cask 'vyprvpn' do
  version '2.14.0.5485'
  sha256 '40076ef12cf2c5589f3f1205216471c1bf31eae1c9e5a40a35bd3c3d20c64883'

  url "https://www.goldenfrog.com/downloads/vyprvpn/desktop/mac/production/#{version}/VyprVPN_v#{version}.dmg"
  name 'VyprVPN'
  homepage 'https://www.goldenfrog.com/vyprvpn'

  app 'VyprVPN.app'

  uninstall quit:      'com.goldenfrog.VyprVPN*',
            launchctl: [
                         'vyprvpnservice',
                         'com.goldenfrog.resourcewatchdog',
                         'com.goldenfrog.VyprVPNUserAgent',
                       ],
            kext:      'com.goldenfrog.VyprVPNMalwareFilter'

  zap delete:    [
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
