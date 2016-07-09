cask 'vmware-horizon-client' do
  version '4.1.0-3982476'
  sha256 'ed7e61b961aac8ef60b77fd0a2600f16c65602bf652a87fc76f0cf6cde7e8f3e'

  url "https://download3.vmware.com/software/view/viewclients/CART16Q2/VMware-Horizon-Client-#{version}.dmg"
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'
  license :gratis

  app 'VMware Horizon Client.app'
end
