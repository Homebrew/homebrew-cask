cask "typeit4me" do
  version "6.3.9,258"
  sha256 "7205f7e0ea0290b5d18d914abffc8efd994b9e74ffe8792c71a1907c09f86352"

  url "https://ettoresoftware.store/download/TypeIt4Me#{version.csv.first}b#{version.csv.second}.zip"
  name "TypeIt4Me"
  desc "Text expander"
  homepage "https://ettoresoftware.store/mac-apps/typeit4me/"

  livecheck do
    url "https://ettoresoftware.store/download/TypeIt4MeAppcastV2.xml"
    strategy :sparkle
  end

  auto_updates true

  app "TypeIt4Me#{version.csv.first}.app"
end
