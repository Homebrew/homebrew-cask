cask 'vmware-horizon-client' do
  version '4.6.0-6607320,CART18FQ3'
  sha256 'f195d2a7357b1c791debda763c9cd8e11db134a2ab5da2d325c757a142141601'

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  app 'VMware Horizon Client.app'
end
