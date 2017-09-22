cask 'vmware-horizon-client' do
  version '4.6.0-6607320'
  sha256 'f195d2a7357b1c791debda763c9cd8e11db134a2ab5da2d325c757a142141601'

  url "https://download3.vmware.com/software/view/viewclients/CART18FQ3/VMware-Horizon-Client-#{version}.dmg"
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  app 'VMware Horizon Client.app'
end
