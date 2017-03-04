cask 'widelands' do
  version '19'
  sha256 'c2e44225236ef7e38d12c2e0daedd93f1e9a730b506df3ed74a010840d8f3da0'

  # launchpad.net/widelands was verified as official when first introduced to the cask
  url "https://launchpad.net/widelands/build#{version}/build#{version}/+download/widelands-build#{version}-mac64.dmg"
  name 'Widelands'
  homepage 'https://wl.widelands.org/'

  app 'Widelands.app'
end
