cask :v1 => 'vmware-horizon-client' do
  version '3.1.0-2096621'
  sha256 '2ef9b6a377e722f03c1b8c10ea9e7df5c56b5e3973e370905602b1ce5e4ed17b'

  url "https://download3.vmware.com/software/view/viewclients/VMware-Horizon-Client-#{version}.dmg"
  homepage 'http://www.vmware.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'VMware Horizon Client.app'
end
