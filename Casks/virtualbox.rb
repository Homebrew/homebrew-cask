cask 'virtualbox' do
  if MacOS.version <= :lion
    version '4.3.40-110317'
    sha256 'eb70fc0f36844ced6dc7deeb30397866fbaffb4a8dfb6071b047e943cae6a312'
  elsif MacOS.version == :mountain_lion
    version '5.0.32-112930'
    sha256 'c693083f1df96a95d5faf794b22737df103973de3e0d89f04734d401962f81cf'
  else
    version '5.1.20-114628'
    sha256 '4980b883721e3b4b2455a66db3edaa9a5cfec8c8d9d872edc90b781259488819'
  end

  url "http://download.virtualbox.org/virtualbox/#{version.sub(%r{-.*}, '')}/VirtualBox-#{version}-OSX.dmg"
  appcast 'http://download.virtualbox.org/virtualbox/LATEST.TXT',
          checkpoint: '840fe5c7e77518c74fcb29830e0b3933596dc2a41784e7f3e76ce418fac96a66'
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
