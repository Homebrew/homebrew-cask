cask 'vmware-horizon-client' do
  version '4.0.1-3708485'
  sha256 '28d5a75194b57754391ebecc08311b3c81a587b9ed22a64685c1e0a51c136e48'

  url "https://download3.vmware.com/software/view/viewclients/CART15Q4_3/VMware-Horizon-Client-#{version}.dmg"
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'
  license :gratis

  app 'VMware Horizon Client.app'
end
