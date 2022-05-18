cask "typeit4me" do
  version "6.3.8,256"
  sha256 "f1010b68dabd05cd1df5566fa1bb4381f897eef09f273912ae0b6913ff9e62b5"

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
