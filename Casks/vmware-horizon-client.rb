cask 'vmware-horizon-client' do
  version '5.2.0-14625369,CART20FQ3'
  sha256 '0446c8ab2faca9a6e7c80adf1d27e3493d9630748edcc35f8972320bd46885c9'

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  appcast 'https://docs.vmware.com/en/VMware-Horizon-Client-for-Mac/',
          configuration: version.major_minor
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  depends_on macos: '>= :sierra'

  app 'VMware Horizon Client.app'
end
