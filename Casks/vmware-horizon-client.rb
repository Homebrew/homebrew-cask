cask 'vmware-horizon-client' do
  version '4.5.1-5760584'
  sha256 '2b2398e381378b08bfa5c6b988d0e919ffa50bf80f81b10990397de21817db31'

  url "https://download3.vmware.com/software/view/viewclients/CART17Q2/VMware-Horizon-Client-#{version}.dmg"
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  app 'VMware Horizon Client.app'
end
