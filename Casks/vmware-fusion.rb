cask 'vmware-fusion' do
  version '11.5.0-14634996'
  sha256 'fe7897a0581564dd491bdb3956db31900289f31a069d2cae8e611bf154557d3a'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  appcast 'https://softwareupdate.vmware.com/cds/vmw-desktop/fusion.xml'
  name 'VMware Fusion'
  homepage 'https://www.vmware.com/products/fusion.html'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'VMware Fusion.app'
  binary 'VMware Fusion.app/Contents/Library/vmnet-bridge'
  binary 'VMware Fusion.app/Contents/Library/vmnet-cfgcli'
  binary 'VMware Fusion.app/Contents/Library/vmnet-cli'
  binary 'VMware Fusion.app/Contents/Library/vmnet-dhcpd'
  binary 'VMware Fusion.app/Contents/Library/vmnet-natd'
  binary 'VMware Fusion.app/Contents/Library/vmnet-netifup'
  binary 'VMware Fusion.app/Contents/Library/vmnet-sniffer'
  binary 'VMware Fusion.app/Contents/Library/vmrun'
  binary 'VMware Fusion.app/Contents/Library/vmrest'
  binary 'VMware Fusion.app/Contents/Library/vmss2core'
  binary 'VMware Fusion.app/Contents/Library/vmware-aewp'
  binary 'VMware Fusion.app/Contents/Library/vmware-authd'
  binary 'VMware Fusion.app/Contents/Library/vmware-cloneBootCamp'
  binary 'VMware Fusion.app/Contents/Library/vmware-id'
  binary 'VMware Fusion.app/Contents/Library/vmware-ntfs'
  binary 'VMware Fusion.app/Contents/Library/vmware-rawdiskAuthTool'
  binary 'VMware Fusion.app/Contents/Library/vmware-rawdiskCreator'
  binary 'VMware Fusion.app/Contents/Library/vmware-remotemks'
  binary 'VMware Fusion.app/Contents/Library/vmware-usbarbitrator'
  binary 'VMware Fusion.app/Contents/Library/vmware-vdiskmanager'
  binary 'VMware Fusion.app/Contents/Library/vmware-vmdkserver'
  binary 'VMware Fusion.app/Contents/Library/vmware-vmx'
  binary 'VMware Fusion.app/Contents/Library/vmware-vmx-debug'
  binary 'VMware Fusion.app/Contents/Library/vmware-vmx-stats'
  binary 'VMware Fusion.app/Contents/Library/VMware OVF Tool/ovftool'

  postflight do
    system_command "#{appdir}/VMware Fusion.app/Contents/Library/Initialize VMware Fusion.tool",
                   args: ['set'],
                   sudo: true
  end

  uninstall_preflight do
    set_ownership "#{appdir}/VMware Fusion.app"
  end

  zap trash: [
               '/Library/Application Support/VMware',
               '/Library/Logs/VMware Fusion Services.log',
               '/Library/Logs/VMware USB Arbitrator Service.log',
               '/Library/Logs/VMware',
               '/Library/Preferences/VMware Fusion',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vmware.fusion.sfl*',
               '~/Library/Application Support/VMware Fusion',
               '~/Library/Caches/com.vmware.fusion',
               '~/Library/Logs/VMware Fusion',
               '~/Library/Logs/VMware Graphics Service.log',
               '~/Library/Logs/VMware',
               '~/Library/Preferences/VMware Fusion',
               '~/Library/Preferences/com.vmware.fusion.plist',
               '~/Library/Preferences/com.vmware.fusion.plist.lockfile',
               '~/Library/Preferences/com.vmware.fusionDaemon.plist',
               '~/Library/Preferences/com.vmware.fusionDaemon.plist.lockfile',
               '~/Library/Preferences/com.vmware.fusionStartMenu.plist',
               '~/Library/Preferences/com.vmware.fusionStartMenu.plist.lockfile',
               '~/Library/Preferences/com.vmware.fusion.LSSharedFileList.plist',
               '~/Library/Preferences/com.vmware.fusion.LSSharedFileList.plist.lockfile',
               '~/Library/Saved Application State/com.vmware.fusion.savedState',
               '~/Library/WebKit/com.vmware.fusion',
             ]

  caveats do
    kext
  end
end
