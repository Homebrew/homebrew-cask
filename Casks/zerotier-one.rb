cask 'zerotier-one' do
  version '1.4.0'
  sha256 'b8e43773ff1fabacabeee93bc3888798192c1fd5bbdd37e99dbdc399cff61f09'

  url 'https://download.zerotier.com/dist/ZeroTier%20One.pkg'
  appcast 'https://github.com/zerotier/ZeroTierOne/releases.atom'
  name 'ZeroTier One'
  homepage 'https://www.zerotier.com/download.shtml'

  pkg 'ZeroTier One.pkg'

  uninstall pkgutil:   'com.zerotier.pkg.ZeroTierOne',
            launchctl: 'com.zerotier.one',
            kext:      'com.zerotier.tap'
end
