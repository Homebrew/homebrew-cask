cask 'vmware-horizon-client' do
  version '5.4.0-15805456,CART21FQ1'
  sha256 'eb51f8fe75eb7ab366ce1b865677f4b94366885288014645dfa64db40aeb68af'

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  appcast 'https://docs.vmware.com/en/VMware-Horizon-Client-for-Mac/',
          configuration: version.major_minor
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  depends_on macos: '>= :sierra'

  app 'VMware Horizon Client.app'
end
