cask 'undercover' do
  version '6.6'
  sha256 '40e6e9a7ff56d0a95a73f876795ada099d57e5393b337172a60ee09211cdb218'

  # undercoverhq.com was verified as official when first introduced to the cask
  url "http://assets.undercoverhq.com/client/#{version}/undercover_mac.pkg"
  name 'Undercover'
  homepage 'http://orbicule.com/undercover/'

  pkg 'undercover_mac.pkg'

  uninstall pkgutil:   'com.orbicule.pkg.Undercover',
            launchctl: [
                         'com.orbicule.UCAgent',
                         'com.orbicule.uc',
                       ]
end
