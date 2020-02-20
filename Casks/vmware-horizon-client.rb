cask 'vmware-horizon-client' do
  version '5.3.0-15225262,CART20FQ4'
  sha256 '4517df1db381b3e326e00d5e3c69248489cd5994e587defe08440826ac1ce35e'

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  appcast 'https://docs.vmware.com/en/VMware-Horizon-Client-for-Mac/',
          configuration: version.major_minor
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  depends_on macos: '>= :sierra'

  app 'VMware Horizon Client.app'
end
