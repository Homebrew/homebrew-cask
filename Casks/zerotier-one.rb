cask 'zerotier-one' do
  version '1.2.4'
  sha256 '127216c5287d748a8e63bea0487775ea18a51b84fbcdd9461caa85da07c3991a'

  url 'https://download.zerotier.com/dist/ZeroTier%20One.pkg'
  appcast 'https://github.com/zerotier/ZeroTierOne/releases.atom',
          checkpoint: 'f6fff965c1d1377ab6c104a6282ca43aca3d893866d69aa2eb085e90b54aa1df'
  name 'ZeroTier One'
  homepage 'https://www.zerotier.com/download.shtml'

  pkg 'ZeroTier One.pkg'

  uninstall pkgutil: 'com.zerotier.pkg.ZeroTierOne'
end
