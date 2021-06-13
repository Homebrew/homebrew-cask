cask "time-out" do
  version "2.8.1"
  sha256 "e72d1f57e5e60f133e27b03543c2ebf5c7bef7317cbfe869c4783952840f4d1d"

  url "https://www.dejal.com/download/timeout-#{version}.zip"
  appcast "https://dejal.net/appcast/?prod=timeout&aed=direct&from=2037&rel=gen"
  name "Time Out"
  desc "Customizable timing of breaks"
  homepage "https://www.dejal.com/timeout/"

  app "Time Out.app"
end
