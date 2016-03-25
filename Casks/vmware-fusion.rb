cask 'vmware-fusion' do
  version '8.1.0-3272237'
  sha256 'da5acdda4b6fe862278dc1658bfe1b021d7bcd06560d51f4e058dce98f86ba3b'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  name 'VMware Fusion'
  homepage 'https://www.vmware.com/products/fusion/'
  license :commercial

  auto_updates true

  app 'VMware Fusion.app'
  %w[
    vmnet-bridge
    vmnet-cfgcli
    vmnet-cli
    vmnet-dhcpd
    vmnet-natd
    vmnet-netifup
    vmnet-sniffer
    vmrun
    vmss2core
    vmware-aewp
    vmware-authd
    vmware-cloneBootCamp
    vmware-id
    vmware-ntfs
    vmware-rawdiskAuthTool
    vmware-rawdiskCreator
    vmware-remotemks
    vmware-usbarbitrator
    vmware-vdiskmanager
    vmware-vmdkserver
    vmware-vmx
    vmware-vmx-debug
    vmware-vmx-stats
    VMware\ OVF\ Tool/ovftool
  ].each do |file|
    binary "VMware Fusion.app/Contents/Library/#{file}"
  end

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
