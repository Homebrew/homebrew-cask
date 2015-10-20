cask :v1_1 => 'vmware-fusion' do
  version '8.0.1-3094680'
  sha256 'e16f66349ee136fd961550f73af243f1ffec63c17847b5f89b74c1cc77898ab4'

  url "https://download3.vmware.com/software/fusion/file/VMware-Fusion-#{version}.dmg"
  name 'VMware Fusion'
  homepage 'https://www.vmware.com/products/fusion/'
  license :commercial
  tags :vendor => 'VMware'

  binary 'VMware Fusion.app/Contents/Library/vmnet-cfgcli'
  binary 'VMware Fusion.app/Contents/Library/vmnet-cli'
  binary 'VMware Fusion.app/Contents/Library/vmrun'
  binary 'VMware Fusion.app/Contents/Library/vmware-vdiskmanager'
  binary 'VMware Fusion.app/Contents/Library/VMware OVF Tool/ovftool'
  app 'VMware Fusion.app'

  uninstall_preflight do
    set_ownership "#{staged_path}/VMware Fusion.app"
  end

  zap :delete => [
                  # note: '~/Library/Application Support/VMware Fusion' is not safe
                  # to delete. In older versions, VM images were located there.
                  '~/Library/Caches/com.vmware.fusion',
                  '~/Library/Logs/VMware',
                  '~/Library/Logs/VMware Fusion',
                 ]
end
