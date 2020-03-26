cask 'vmware-horizon-client' do
  version '5.4.1-15897325,CART21FQ1'
  sha256 '64b25f3f57cf09efa864ce71d2f0edf6598e11ea459ff1f625325c17200a950e'

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  appcast 'https://docs.vmware.com/en/VMware-Horizon-Client-for-Mac/',
          configuration: version.major_minor
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  depends_on macos: '>= :sierra'

  app 'VMware Horizon Client.app'
end
