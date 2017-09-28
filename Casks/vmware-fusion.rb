cask 'vmware-fusion' do
  version '10.0.0-6665085'
  sha256 'acd6bab4cb7a63319db8eb2f95da8738b394790d72fd44d4a6a7bd9895e023bb'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  appcast 'https://softwareupdate.vmware.com/cds/vmw-desktop/fusion.xml',
          checkpoint: 'ad9fd8c30e14e34d54f0878a3926773ca8e6ba5ff21eb25f124ca79f82a087e3'
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
                '/Library/Logs/VMware Fusion Services.log',
                '/Library/Logs/VMware USB Arbitrator Service.log',
                '/Library/Logs/VMware',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vmware.fusion.sfl',
                '~/Library/Caches/com.vmware.fusion',
                '~/Library/Logs/VMware Fusion',
                '~/Library/Logs/VMware Graphics Service.log',
                '~/Library/Logs/VMware',
                '~/Library/Preferences/com.vmware.fusion.LSSharedFileList.plist',
                '~/Library/Preferences/com.vmware.fusion.LSSharedFileList.plist.lockfile',
                '~/Library/Saved Application State/com.vmware.fusion.savedState',
                '~/Library/WebKit/com.vmware.fusion',
              ],
      trash:  [
                '/Library/Application Support/VMware',
                '/Library/Preferences/VMware Fusion',
                '~/Library/Application Support/VMware Fusion',
                '~/Library/Preferences/VMware Fusion',
                '~/Library/Preferences/com.vmware.fusion.plist',
                '~/Library/Preferences/com.vmware.fusion.plist.lockfile',
                '~/Library/Preferences/com.vmware.fusionDaemon.plist',
                '~/Library/Preferences/com.vmware.fusionDaemon.plist.lockfile',
                '~/Library/Preferences/com.vmware.fusionStartMenu.plist',
                '~/Library/Preferences/com.vmware.fusionStartMenu.plist.lockfile',
              ]
end
