cask 'xfinity-wifi' do
  version :latest
  sha256 :no_check

  url 'https://wifi.xfinity.com/download_mac.php'
  name 'XFINITY WiFi'
  homepage 'https://wifi.xfinity.com/'

  container type: :pkg

  pkg 'XFINITY_WiFi.pkg'

  # This is a horrible hack to force the file extension.  The
  # backend code should be fixed so that this is not needed.
  preflight do
    system '/bin/mv', '--', staged_path.join('download_mac.php'), staged_path.join('XFINITY_WiFi.pkg')
  end

  uninstall pkgutil:   'com.smithmicro.netwise.osx.comcast.installer',
            launchctl: 'com.smithmicro.netwise.osx.helper',
            quit:      [
                         'com.smithmicro.netwise.HotspotAuthenticatorOSX',
                         'com.smithmicro.netwise.osx.comcast',
                         'com.smithmicro.netwise.osx.comcast.help',
                       ]

  zap delete: [
                '/Library/PrivilegedHelperTools/com.smithmicro.netwise.osx.helper',
                '~/Library/Application Support/com.smithmicro.netwise.osx.comcast',
                '~/Library/Caches/com.crashlytics.data/com.smithmicro.netwise.osx.comcast',
                '~/Library/Caches/com.smithmicro.netwise.osx.comcast',
                '~/Library/Logs/XFINITY WiFi',
                '~/Library/Preferences/com.smithmicro.netwise.osx.comcast.plist',
              ]
end
