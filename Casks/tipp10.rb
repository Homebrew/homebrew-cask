cask 'tipp10' do
  # note: "10" is not a version number, but an intrinsic part of the product name
  version '2.1.0'
  sha256 '023f9545b78a7ca35eea3b23597b6380a4f4d42cc75ace72dcadf645be9edb93'

  url "https://www.tipp10.com/en/download/tipp10_mac_v#{version.dots_to_hyphens}.dmg"
  name 'TIPP10'
  homepage 'https://www.tipp10.com/'

  app 'TIPP10.app'
end
