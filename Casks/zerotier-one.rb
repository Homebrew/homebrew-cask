cask 'zerotier-one' do
  version '1.2.12'
  sha256 'c58747a5ecaca0c0720928db6d4a0d8f1eaa712b92bd1e272fbeb643c5dacbd2'

  url 'https://download.zerotier.com/dist/ZeroTier%20One.pkg'
  appcast 'https://github.com/zerotier/ZeroTierOne/releases.atom'
  name 'ZeroTier One'
  homepage 'https://www.zerotier.com/download.shtml'

  pkg 'ZeroTier One.pkg'

  uninstall pkgutil:   'com.zerotier.pkg.ZeroTierOne',
            launchctl: 'com.zerotier.one',
            kext:      'com.zerotier.tap'
end
