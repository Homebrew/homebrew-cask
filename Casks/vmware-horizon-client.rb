cask :v1 => 'vmware-horizon-client' do
  version '3.4.0-2769709'
  sha256 'df0ed13716d4dbd5dae7dc77f2f29668907860b205f50132b6a1533364d3dd97'

  url "https://download3.vmware.com/software/view/viewclients/CART15Q2/VMware-Horizon-Client-#{version}.dmg"
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VMware Horizon Client.app'
end
