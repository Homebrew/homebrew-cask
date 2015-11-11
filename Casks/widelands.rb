cask :v1 => 'widelands' do
  version 'Build 18'
  sha256 '1d209dcf653942788120c6f1abbe6f421fdefe6776f4feed48c58eddeb4c3722'

  # launchpad.net is the official download host per the vendor homepage
  url 'https://launchpad.net/widelands/build18/build-18/+download/widelands-build18-mac.dmg'
  name 'Widelands'
  homepage 'https://wl.widelands.org/'
  license :gpl

  app 'Widelands.app'
end
