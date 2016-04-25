cask 'vmware-fusion' do
  version '8.1.1-3771013'
  sha256 '29cad381a36374e58a85fb58f7aaad8cae41ad50ef07fdda0db6d782c95c0a95'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  name 'VMware Fusion'
  homepage 'https://www.vmware.com/products/fusion/'
  license :commercial

  auto_updates true

  app 'VMware Fusion.app'
  binary 'VMware Fusion.app/Contents/Library/vmnet-bridge'
  binary 'VMware Fusion.app/Contents/Library/vmnet-cfgcli'
  binary 'VMware Fusion.app/Contents/Library/vmnet-cli'
  binary 'VMware Fusion.app/Contents/Library/vmnet-dhcpd'
  binary 'VMware Fusion.app/Contents/Library/vmnet-natd'
  binary 'VMware Fusion.app/Contents/Library/vmnet-netifup'
  binary 'VMware Fusion.app/Contents/Library/vmnet-sniffer'
  binary 'VMware Fusion.app/Contents/Library/vmrun'
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
