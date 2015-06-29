cask :v1 => 'vmware-horizon-client' do
  version '3.2.0-2331566'
  sha256 '12a9c79ecdf9de719999955ba350f7829d1b6be179eb757728429fe2eef54e99'

  url "https://download3.vmware.com/software/view/viewclients/CART14Q4/VMware-Horizon-Client-#{version}.dmg"
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'VMware Horizon Client.app'
end
