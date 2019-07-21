cask 'vmware-horizon-client' do
  version '5.1.0-13920831,CART20FQ2'
  sha256 '2341c1e1265b38117b74660d748b4625edf1248bfc86932523d1abf947b005db'

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  appcast 'https://docs.vmware.com/en/VMware-Horizon-Client-for-Mac/',
          configuration: version.major_minor
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  depends_on macos: '>= :sierra'

  app 'VMware Horizon Client.app'
end
