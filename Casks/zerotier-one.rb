cask 'zerotier-one' do
  version '1.4.0'
  sha256 '43cdcf7b1e3c15c6a689172737a1d20894188c640ed135a89149a4acc48ec8d4'

  url 'https://download.zerotier.com/dist/ZeroTier%20One.pkg'
  appcast 'https://github.com/zerotier/ZeroTierOne/releases.atom'
  name 'ZeroTier One'
  homepage 'https://www.zerotier.com/download.shtml'

  pkg 'ZeroTier One.pkg'

  uninstall pkgutil:   'com.zerotier.pkg.ZeroTierOne',
            launchctl: 'com.zerotier.one',
            kext:      'com.zerotier.tap'
end
