cask 'zerotier-one' do
  version :latest
  sha256 :no_check

  url 'https://download.zerotier.com/dist/ZeroTier%20One.pkg'
  appcast 'https://github.com/zerotier/ZeroTierOne/releases.atom',
          checkpoint: '281d0b06265be988b641b1dce843cf3635059e8cd0e5fce9391be1e03c74827d'
  name 'ZeroTier One'
  homepage 'https://www.zerotier.com/product-one.shtml'

  pkg 'ZeroTier One.pkg'

  uninstall pkgutil: 'com.zerotier.pkg.ZeroTierOne'
end
