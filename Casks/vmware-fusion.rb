cask :v1_1 => 'vmware-fusion' do
  version '8.0.2-3164312'
  sha256 'b7e48506a65ecc147ea596a23bfb56f73feaa1ec327ff78fbd2eeb5cb1f63e3f'

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
