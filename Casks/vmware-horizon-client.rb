cask 'vmware-horizon-client' do
  version '5.2.1-14979452,CART20FQ3'
  sha256 '8de6487d87b5aa43bf46cf124b608ec556f34c915e186ef71ef2e2f423e5ead9'

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  appcast 'https://docs.vmware.com/en/VMware-Horizon-Client-for-Mac/',
          configuration: version.major_minor
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  depends_on macos: '>= :sierra'

  app 'VMware Horizon Client.app'
end
