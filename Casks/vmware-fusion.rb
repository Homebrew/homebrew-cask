cask 'vmware-fusion' do
  version '8.5.3-4696910'
  sha256 '68d3f5b4379302138f3d1060ec270b960a531e28177f8b30c5431390912b6337'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  appcast 'https://softwareupdate.vmware.com/cds/vmw-desktop/fusion.xml',
          checkpoint: '3b61731b6d171ddb91512e06e8118160d4a703e606e8df1d3a6b57bdfce38c58'
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

  zap delete: [
                # note: '~/Library/Application Support/VMware Fusion' is not safe
                # to delete. In older versions, VM images were located there.
                '/Library/Application Support/VMware',
                '/Library/Logs/VMware Fusion Services.log',
                '/Library/Logs/VMware',
                '/Library/Preferences/VMware Fusion',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vmware.fusion.sfl',
                '~/Library/Caches/com.vmware.fusion',
                '~/Library/Logs/VMware Fusion',
                '~/Library/Logs/VMware Graphics Service.log',
                '~/Library/Logs/VMware',
                '~/Library/Preferences/VMware Fusion',
                '~/Library/Preferences/com.vmware.fusion.LSSharedFileList.plist',
                '~/Library/Preferences/com.vmware.fusion.LSSharedFileList.plist.lockfile',
                '~/Library/Preferences/com.vmware.fusion.plist',
                '~/Library/Preferences/com.vmware.fusion.plist.lockfile',
                '~/Library/Preferences/com.vmware.fusionDaemon.plist',
                '~/Library/Preferences/com.vmware.fusionDaemon.plist.lockfile',
                '~/Library/Preferences/com.vmware.fusionStartMenu.plist',
                '~/Library/Preferences/com.vmware.fusionStartMenu.plist.lockfile',
                '~/Library/Saved Application State/com.vmware.fusion.savedState',
                '~/Library/WebKit/com.vmware.fusion',
              ]
end
