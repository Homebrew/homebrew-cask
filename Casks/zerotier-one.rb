cask 'zerotier-one' do
  version '1.2.8'
  sha256 '13f39b296e04b309fbd6fb3b1a8ade3a85479ff4ea7db151ce2da1678a1eff31'

  url 'https://download.zerotier.com/dist/ZeroTier%20One.pkg'
  appcast 'https://github.com/zerotier/ZeroTierOne/releases.atom',
          checkpoint: 'f9e5f3fdc8a07ee63b0c84c023267c5f088c99d65721e2dec0dd49a0330206e6'
  name 'ZeroTier One'
  homepage 'https://www.zerotier.com/download.shtml'

  pkg 'ZeroTier One.pkg'

  uninstall pkgutil:   'com.zerotier.pkg.ZeroTierOne',
            launchctl: 'com.zerotier.one',
            kext:      'com.zerotier.tap'
end
