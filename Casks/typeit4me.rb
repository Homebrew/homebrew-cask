cask "typeit4me" do
  version "6.3.4,247"
  sha256 "da31d8199e9c8d558b2ae1da2de520aae83e2299510d828bc3a87e6fc1cdca8a"

  url "https://ettoresoftware.store/download/TypeIt4Meb#{version.csv.second}.zip"
  name "TypeIt4Me"
  desc "Text expander"
  homepage "https://ettoresoftware.store/mac-apps/typeit4me/"

  livecheck do
    url "https://ettoresoftware.store/download/TypeIt4MeAppcastV2.xml"
    strategy :sparkle
  end

  auto_updates true

  app "TypeIt4Me.app"
end
