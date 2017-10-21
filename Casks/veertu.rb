cask 'veertu' do
  version '1.2.97'
  sha256 '982500c343119bda7d49eaa037d485937ee36b3bf51934b165931339d85a114c'

  # d2sje6b9huarvp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2sje6b9huarvp.cloudfront.net/VeertuDesktop-#{version}.dmg"
  appcast 'https://d2sje6b9huarvp.cloudfront.net/vdoaupd.rss',
          checkpoint: 'fadbb21aa91efd48ebc69bf71a09cf13134dd1f7ea454d2e4df98d2b3c655611'
  name 'Veertu Desktop'
  homepage 'https://veertu.com/'

  depends_on macos: '>= :yosemite'

  app 'Veertu Desktop.app'

  uninstall launchctl: 'com.veertu.vlaunch',
            delete:    [
                         '/Library/PrivilegedHelperTools/com.veertu.vlaunch',
                         '/usr/local/bin/vdlaunch',
                       ]

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.veertu.veertu.sfl',
                '~/Library/Caches/com.veertu.Veertu',
                '~/Library/Containers/com.veertu.Veertu',
                '~/Library/Preferences/com.veertu.Veertu.plist',
                '~/Library/Saved Application State/com.veertu.Veertu.savedState',
                '~/Library/Saved Application State/com.veertu.vmx.savedState',
                '~/Library/WebKit/com.veertu.Veertu',
              ]
end
