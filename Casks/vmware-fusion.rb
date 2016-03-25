cask 'vmware-fusion' do
  version '8.1.0-3272237'
  sha256 'da5acdda4b6fe862278dc1658bfe1b021d7bcd06560d51f4e058dce98f86ba3b'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  name 'VMware Fusion'
  homepage 'https://www.vmware.com/products/fusion/'
  license :commercial

  auto_updates true

  app 'VMware Fusion.app'
  binary 'VMWare Fusion.app/Contents/Library/vmnet-bridge'
  binary 'VMWare Fusion.app/Contents/Library/vmnet-cfgcli'
  binary 'VMWare Fusion.app/Contents/Library/vmnet-cli'
  binary 'VMWare Fusion.app/Contents/Library/vmnet-dhcpd'
  binary 'VMWare Fusion.app/Contents/Library/vmnet-natd'
  binary 'VMWare Fusion.app/Contents/Library/vmnet-netifup'
  binary 'VMWare Fusion.app/Contents/Library/vmnet-sniffer'
  binary 'VMWare Fusion.app/Contents/Library/vmrun'
  binary 'VMWare Fusion.app/Contents/Library/vmss2core'
  binary 'VMWare Fusion.app/Contents/Library/vmware-aewp'
  binary 'VMWare Fusion.app/Contents/Library/vmware-authd'
  binary 'VMWare Fusion.app/Contents/Library/vmware-cloneBootCamp'
  binary 'VMWare Fusion.app/Contents/Library/vmware-id'
  binary 'VMWare Fusion.app/Contents/Library/vmware-ntfs'
  binary 'VMWare Fusion.app/Contents/Library/vmware-rawdiskAuthTool'
  binary 'VMWare Fusion.app/Contents/Library/vmware-rawdiskCreator'
  binary 'VMWare Fusion.app/Contents/Library/vmware-remotemks'
  binary 'VMWare Fusion.app/Contents/Library/vmware-usbarbitrator'
  binary 'VMWare Fusion.app/Contents/Library/vmware-vdiskmanager'
  binary 'VMWare Fusion.app/Contents/Library/vmware-vmdkserver'
  binary 'VMWare Fusion.app/Contents/Library/vmware-vmx'
  binary 'VMWare Fusion.app/Contents/Library/vmware-vmx-debug'
  binary 'VMWare Fusion.app/Contents/Library/vmware-vmx-stats'
  binary 'VMWare Fusion.app/Contents/Library/VMware OVF Tool/ovftool'

  uninstall_preflight do
    set_ownership "#{staged_path}/VMware Fusion.app"
  end

  zap delete: [
                # note: '~/Library/Application Support/VMware Fusion' is not safe
                # to delete. In older versions, VM images were located there.
                '~/Library/Caches/com.vmware.fusion',
                '~/Library/Logs/VMware',
                '~/Library/Logs/VMware Fusion',
              ]
end
