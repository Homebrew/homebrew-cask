cask 'vmware-horizon-client' do
  version '4.9.0-9503551,CART19FQ3'
  sha256 '81d85a4ca9ca744399cce2a8c933635ffa4c89dcfb2ed5efe607c92497f5b56b'

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  app 'VMware Horizon Client.app'
end
