cask 'vmware-horizon-client' do
  version '5.4.2-15910566,CART21FQ1'
  sha256 '2d5668402ef372656b487e8e868a8a5a139ec4b8ff88b10d15772231f0988c26'

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  appcast 'https://docs.vmware.com/en/VMware-Horizon-Client-for-Mac/',
          configuration: version.major_minor
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  depends_on macos: '>= :sierra'

  app 'VMware Horizon Client.app'
end
