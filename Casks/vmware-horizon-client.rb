cask 'vmware-horizon-client' do
  version '4.3.0-4698798'
  sha256 'e90685948d134c8108a1c2f3e8252c402bbe1ddf220be94b9e5d67e719dd9740'

  url "https://download3.vmware.com/software/view/viewclients/CART16Q4/VMware-Horizon-Client-#{version}.dmg"
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  app 'VMware Horizon Client.app'
end
