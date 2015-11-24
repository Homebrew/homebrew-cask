cask :v1 => 'vmware-horizon-client' do
  version '3.5.2-3151577'
  sha256 '52254a1203706ed8a7700b888f9d88b0754ff053698d21313d4f7683fcfff48c'

  url "https://download3.vmware.com/software/view/viewclients/CART15Q4_3/VMware-Horizon-Client-#{version}.dmg"
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'
  license :gratis

  app 'VMware Horizon Client.app'
end
