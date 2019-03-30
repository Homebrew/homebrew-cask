cask 'vmware-horizon-client' do
  version '5.0.0-12557381,CART20FQ1'
  sha256 'ac3c7338c536c766ac2bad7f4f9b98a9e970c1c053beae2941d5f449829f7328'

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  appcast 'https://docs.vmware.com/en/VMware-Horizon-Client-for-Mac/'
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  depends_on macos: '>= :sierra'

  app 'VMware Horizon Client.app'
end
