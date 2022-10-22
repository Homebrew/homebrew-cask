cask "tipp10" do
  # NOTE: "10" is not a version number, but an intrinsic part of the product name
  version "2.1.0"
  sha256 "023f9545b78a7ca35eea3b23597b6380a4f4d42cc75ace72dcadf645be9edb93"

  url "https://www.tipp10.com/en/download/tipp10_mac_v#{version.dots_to_hyphens}.dmg"
  name "TIPP10"
  desc "Free touch typing tutor"
  homepage "https://www.tipp10.com/"

  depends_on macos: "<= :mojave"

  app "TIPP10.app"

  caveats do
    discontinued
  end
end
