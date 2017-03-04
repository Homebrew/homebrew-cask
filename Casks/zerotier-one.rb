cask 'zerotier-one' do
  version '1.1.14'
  sha256 '272c07b491f2bdb17757345be1ebc63609436c2ccd912bb515d08742951d63bf'

  url 'https://download.zerotier.com/dist/ZeroTier%20One.pkg'
  appcast 'https://github.com/zerotier/ZeroTierOne/releases.atom',
          checkpoint: '281d0b06265be988b641b1dce843cf3635059e8cd0e5fce9391be1e03c74827d'
  name 'ZeroTier One'
  homepage 'https://www.zerotier.com/product-one.shtml'

  pkg 'ZeroTier One.pkg'

  uninstall pkgutil: 'com.zerotier.pkg.ZeroTierOne'
end
