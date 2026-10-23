cask "vitamin-r" do
  version "4.28"
  sha256 "b0827fe4e4c09730d1a8fd8d6bdfb6e059522774a48632f4a75020c8a8022146"

  url "https://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  name "Vitamin-R"
  desc "Collection of productivity tools and techniques"
  homepage "https://www.publicspace.net/Vitamin-R/"

  livecheck do
    url "https://www.publicspace.net/app/vitamin#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Vitamin-R #{version.major}.app"

  uninstall quit:       "net.publicspace.dist.vitaminr#{version.major}",
            login_item: "Vitamin-R #{version.major}"

  zap trash: [
    "~/Library/Application Support/Vitamin-R",
    "~/Library/Caches/net.publicspace.dist.vitaminr#{version.major}",
    "~/Library/HTTPStorages/net.publicspace.dist.vitaminr#{version.major}",
    "~/Library/HTTPStorages/net.publicspace.dist.vitaminr#{version.major}.binarycookies",
    "~/Library/Preferences/net.publicspace.dist.vitaminr#{version.major}.plist",
  ]
end
