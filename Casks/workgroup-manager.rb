cask 'workgroup-manager' do
  version '10.9'
  sha256 :no_check

  url "http://support.apple.com/downloads/DL1698/en_US/WorkgroupManager#{version}.dmg"
  name 'Workgroup Manager'
  homepage 'https://support.apple.com/kb/dl1698?locale=pt_BR'
  license :gratis

  app 'Workgroup Manager.app'
end
