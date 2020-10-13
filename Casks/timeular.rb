cask "timeular" do
  version "3.5.0"
  sha256 "8632722c809f203e7139eb8c363477782185ed31dcc6df3942b52cc7af6b5cba"

  # timeular-desktop-packages.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg"
  appcast "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml"
  name "Timeular"
  homepage "https://timeular.com/"

  auto_updates true

  app "Timeular.app"
end
