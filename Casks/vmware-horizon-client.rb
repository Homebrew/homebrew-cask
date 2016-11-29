cask 'vmware-horizon-client' do
  version '4.2.0-4336768'
  sha256 '1680232b2422a4ae5d381be8acb954050f6abcc3de14fb09cc1fcb3a84c4b0d7'

  url "https://download3.vmware.com/software/view/viewclients/CART16Q3/VMware-Horizon-Client-#{version}.dmg"
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  app 'VMware Horizon Client.app'
end
