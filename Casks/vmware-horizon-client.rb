cask 'vmware-horizon-client' do
  version '4.7.0-7395166,CART18FQ4'
  sha256 '5907cf801cc2fedfc20bcdb65b9fe9b9d69f9dd9e39e4d7a5a1127f3b8bdfcf9'

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  app 'VMware Horizon Client.app'
end
