cask "waltr" do
  version "2.6.27"
  sha256 "5b1ca23244d060c6ca941f96ca78e91fbff5cde34cdf5d9879468fee6e2929f3"

  # dl.devmate.com/com.softorino.waltr2/ was verified as official when first introduced to the cask
  url "https://shining.softorino.com/shine_uploads/waltr#{version.major}mac_#{version}.dmg"
  appcast "https://api.softorino.com/v1/app-manager/waltr#{version.major}/mac/updates"
  name "WALTR"
  homepage "https://softorino.com/w#{version.major}/"

  app "Waltr #{version.major}.app"
end
