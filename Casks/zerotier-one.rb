cask 'zerotier-one' do
  version '1.2.4'
  sha256 '127216c5287d748a8e63bea0487775ea18a51b84fbcdd9461caa85da07c3991a'

  url 'https://download.zerotier.com/dist/ZeroTier%20One.pkg'
  appcast 'https://github.com/zerotier/ZeroTierOne/releases.atom',
          checkpoint: '71ba09b3edd757ba67d9283c1203b1282d3a5d48ed9d6de6f147e152de6d075c'
  name 'ZeroTier One'
  homepage 'https://www.zerotier.com/download.shtml'

  pkg 'ZeroTier One.pkg'

  uninstall pkgutil: 'com.zerotier.pkg.ZeroTierOne'
end
