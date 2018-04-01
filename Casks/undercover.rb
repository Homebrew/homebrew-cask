cask 'undercover' do
  version '6.5'
  sha256 '3eeacdf5dc74cd3f75c40ba975d728551da001571ba8eafc270646e29c22b9fb'

  # undercoverhq.com was verified as official when first introduced to the cask
  url "http://assets.undercoverhq.com/client/#{version}/undercover_mac.pkg"
  name 'Undercover'
  homepage 'http://orbicule.com/undercover/'

  pkg 'undercover_mac.pkg'

  uninstall pkgutil: 'com.orbicule.pkg.Undercover'
end
