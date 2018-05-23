cask 'vmware-fusion' do
  version '10.1.2-8502123'
  sha256 'b3310fc8ee64bae6e994e0e2720282b037857cc22ffd8427a713f0c84ac4e556'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  appcast 'https://softwareupdate.vmware.com/cds/vmw-desktop/fusion.xml',
          checkpoint: '32c167852b107aebf932666d3846801153297c1c9996d8ae5f923d77eb0ae4d9'
  name 'VMware Fusion'
  homepage 'https://www.vmware.com/products/fusion.html'

  auto_updates true

  app 'VMware Fusion.app'
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-bridge"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-cfgcli"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-cli"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-dhcpd"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-natd"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-netifup"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmnet-sniffer"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmrun"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmss2core"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-aewp"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-authd"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-cloneBootCamp"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-id"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-ntfs"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-rawdiskAuthTool"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-rawdiskCreator"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-remotemks"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-usbarbitrator"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-vdiskmanager"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-vmdkserver"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-vmx"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-vmx-debug"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/vmware-vmx-stats"
  binary "#{appdir}/VMware Fusion.app/Contents/Library/VMware OVF Tool/ovftool"

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
