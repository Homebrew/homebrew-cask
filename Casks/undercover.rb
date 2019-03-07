cask 'undercover' do
  version '6.7'
  sha256 '54ed130d0caebf4278949561609a4fa095647a089074846d2ebd72747023c2bf'

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
