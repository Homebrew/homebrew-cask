cask 'virtualbox' do
  if MacOS.version <= :lion
    version '4.3.40-110317'
    sha256 'eb70fc0f36844ced6dc7deeb30397866fbaffb4a8dfb6071b047e943cae6a312'
  elsif MacOS.version == :mountain_lion
    version '5.0.32-112930'
    sha256 'c693083f1df96a95d5faf794b22737df103973de3e0d89f04734d401962f81cf'
  else
    version '5.1.14-112924'
    sha256 'f12ed3b1f98c45074e52742d1006c418acd22d0d91e8a6fb6f7b3121c21ce998'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/VirtualBox-#{version}-OSX.dmg"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST.TXT',
          checkpoint: '69ff967697383e82adfccadcc6e493391648adb709c427d4fef9ded116c08798'
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org/'

  pkg 'VirtualBox.pkg'

  uninstall script:  {
                       executable: 'VirtualBox_Uninstall.tool',
                       args:       %w[--unattended],
                     },
            pkgutil: 'org.virtualbox.pkg.*'

  zap delete: [
                '/Library/Application Support/VirtualBox',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualbox.sfl',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualboxvm.sfl',
                '~/Library/VirtualBox',
                '~/Library/Preferences/org.virtualbox.app.VirtualBox.plist',
                '~/Library/Preferences/org.virtualbox.app.VirtualBoxVM.plist',
                '~/Library/Saved Application State/org.virtualbox.app.VirtualBox.savedState',
                '~/Library/Saved Application State/org.virtualbox.app.VirtualBoxVM.savedState',
              ],
      rmdir:  '~/VirtualBox VMs'
end
