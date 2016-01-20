cask 'vmware-fusion' do
  version '8.1.0-3272237'
  sha256 'da5acdda4b6fe862278dc1658bfe1b021d7bcd06560d51f4e058dce98f86ba3b'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  name 'VMware Fusion'
  homepage 'https://www.vmware.com/products/fusion/'
  license :commercial

  auto_updates true

  app 'VMware Fusion.app'
  binary 'VMware Fusion.app/Contents/Library/vmnet-cfgcli'
  binary 'VMware Fusion.app/Contents/Library/vmnet-cli'
  binary 'VMware Fusion.app/Contents/Library/vmrun'
  binary 'VMware Fusion.app/Contents/Library/vmware-vdiskmanager'
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
