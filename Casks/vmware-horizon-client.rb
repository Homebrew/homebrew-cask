cask 'vmware-horizon-client' do
  version '4.10.0-11013656,CART19FQ4'
  sha256 'beec3bb8a8a1f31c39ab502d3b718d151c7c30fd0b8c7618223804640e417dbd'

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  app 'VMware Horizon Client.app'
end
