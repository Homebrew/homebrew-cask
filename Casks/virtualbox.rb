cask 'virtualbox' do
  version '5.2.8,121009'
  sha256 '97764ad37c5fafdeccecfb660ce056f625e9048890af772befe0330ed2def1d8'

  url "https://download.virtualbox.org/virtualbox/#{version.before_comma}/VirtualBox-#{version.before_comma}-#{version.after_comma}-OSX.dmg"
  appcast 'https://download.virtualbox.org/virtualbox/LATEST.TXT',
          checkpoint: '96cbba0b6bc9a09d588b1a2de0a078ffcb35a31827e7ff1aaa9817df42caac88'
  name 'Oracle VirtualBox'
  homepage 'https://www.virtualbox.org/'

  pkg 'VirtualBox.pkg'

  uninstall script:  {
                       executable: 'VirtualBox_Uninstall.tool',
                       args:       ['--unattended'],
                       sudo:       true,
                     },
            pkgutil: 'org.virtualbox.pkg.*'

  zap trash: [
               '/Library/Application Support/VirtualBox',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualbox.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualboxvm.sfl*',
               '~/Library/VirtualBox',
               '~/Library/Preferences/org.virtualbox.app.VirtualBox.plist',
               '~/Library/Preferences/org.virtualbox.app.VirtualBoxVM.plist',
               '~/Library/Saved Application State/org.virtualbox.app.VirtualBox.savedState',
               '~/Library/Saved Application State/org.virtualbox.app.VirtualBoxVM.savedState',
             ],
      rmdir: '~/VirtualBox VMs'

  caveats do
    kext
  end
end
