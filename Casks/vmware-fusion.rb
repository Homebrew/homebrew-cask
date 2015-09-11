cask :v1_1 => 'vmware-fusion' do
  version '8.0.0-2985594'
  sha256 'ae1ce23de6f631c098cdd2b84a8b9beabc86fa2573d8c256c832fcda12941ef8'

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
