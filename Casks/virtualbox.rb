cask 'virtualbox' do
  if MacOS.version <= :lion
    version '4.3.40-110317'
    sha256 'eb70fc0f36844ced6dc7deeb30397866fbaffb4a8dfb6071b047e943cae6a312'
  elsif MacOS.version == :mountain_lion
    version '5.0.32-112930'
    sha256 'c693083f1df96a95d5faf794b22737df103973de3e0d89f04734d401962f81cf'
  else
    version '5.1.16-113841'
    sha256 '3619643bec6c3a03335dcee6b18e19bf3bd18b949f39d293fa80cabfab3dab2d'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/VirtualBox-#{version}-OSX.dmg"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST.TXT',
          checkpoint: '3b19da469fd33ed5a7d8d1b726a3dc979913b86484b1e78aa386f88b68a82672'
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
