cask 'vmware-horizon-client' do
  version '4.8.0-8537035,CART19FQ2'
  sha256 '3a050ec744545f34cdcd9f3c9ffaf927d2af087e82755f7bb1c60a06e970db41'

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  app 'VMware Horizon Client.app'
end
