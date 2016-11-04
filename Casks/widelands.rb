cask 'widelands' do
  version '18'
  sha256 '1d209dcf653942788120c6f1abbe6f421fdefe6776f4feed48c58eddeb4c3722'

  # launchpad.net/widelands was verified as official when first introduced to the cask
  url "https://launchpad.net/widelands/build#{version}/build-#{version}/+download/widelands-build#{version}-mac.dmg"
  name 'Widelands'
  homepage 'https://wl.widelands.org/'

  app 'Widelands.app'
end
