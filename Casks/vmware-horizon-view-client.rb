cask :v1 => 'vmware-horizon-view-client' do
  version '3.0.0-1887158'
  sha256 'c29568142e942b58bb9ab16882b80e7e19df975a07a613ed8abdcf43e2349ced'

  url "https://download3.vmware.com/software/view/viewclients/VMware-Horizon-View-Client-#{version}.dmg"
  homepage 'http://www.vmware.com/'
  license :unknown

  app 'VMware Horizon View Client.app'
end
