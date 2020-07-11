cask 'vmware-horizon-client' do
  version '5.4.3-16499473,CART21FQ1'
  sha256 '3fe45ce4f1a84049ed9d7e445fdc0397da7c8b420ae870e686fd66876b2003d6'

  url "https://download3.vmware.com/software/view/viewclients/#{version.after_comma}/VMware-Horizon-Client-#{version.before_comma}.dmg"
  appcast 'https://docs.vmware.com/en/VMware-Horizon-Client-for-Mac/',
          must_contain: version.major_minor
  name 'VMware Horizon Client'
  homepage 'https://www.vmware.com/'

  depends_on macos: '>= :sierra'

  app 'VMware Horizon Client.app'
end
