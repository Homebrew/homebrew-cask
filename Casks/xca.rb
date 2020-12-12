cask "xca" do
  version "2.3.0"
  sha256 "798dcad616837b33ad7a92f6f62a7afba3d9eb049ad26ecccfc8747c8ac9d551"

  # github.com/chris2511/xca/ was verified as official when first introduced to the cask
  url "https://github.com/chris2511/xca/releases/download/RELEASE.#{version}/xca-#{version}.dmg"
  appcast "https://github.com/chris2511/xca/releases.atom"
  name "XCA"
  desc "X Certificate and Key management"
  homepage "https://hohnstaedt.de/xca/"

  app "xca.app"
end
