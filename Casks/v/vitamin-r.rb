cask "vitamin-r" do
  version "4.21"
  sha256 "96904470a41e5fe61c267ea1e4feb9bedad22d836cdd0fdc41e10a78229821ca"

  url "https://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  name "Vitamin-R"
  desc "Collection of productivity tools and techniques"
  homepage "https://www.publicspace.net/Vitamin-R/"

  livecheck do
    url "https://www.publicspace.net/app/vitamin#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Vitamin-R #{version.major}.app"

  uninstall login_item: "Vitamin-R #{version.major}"

  zap trash: [
    "~/Library/Application Support/Vitamin-R",
    "~/Library/Caches/net.publicspace.dist.vitaminr#{version.major}",
    "~/Library/HTTPStorages/net.publicspace.dist.vitaminr#{version.major}",
    "~/Library/HTTPStorages/net.publicspace.dist.vitaminr#{version.major}.binarycookies",
    "~/Library/Preferences/net.publicspace.dist.vitaminr#{version.major}.plist",
  ]
end
