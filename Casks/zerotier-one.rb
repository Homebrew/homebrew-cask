cask 'zerotier-one' do
  version '1.2.4'
  sha256 '127216c5287d748a8e63bea0487775ea18a51b84fbcdd9461caa85da07c3991a'

  url 'https://download.zerotier.com/dist/ZeroTier%20One.pkg'
  appcast 'https://github.com/zerotier/ZeroTierOne/releases.atom',
          checkpoint: '2889963712a378cb1a035823a36dc918af88797185876b9a000ce7d4715dddc9'
  name 'ZeroTier One'
  homepage 'https://www.zerotier.com/download.shtml'

  pkg 'ZeroTier One.pkg'

  uninstall pkgutil: 'com.zerotier.pkg.ZeroTierOne'
end
