cask "vitamin-r" do
  on_high_sierra :or_older do
    version "3.31"
    sha256 "6c5ce3926060b7e3616527fc3c1f0d2a5cd8a0be4d9f5496c099a33be993312b"
  end
  on_mojave :or_newer do
    version "4.18"
    sha256 "3ad3a2ccb1402b6f4870154653df42110ac1b5b9954a9f28cd45b503992402b1"
  end

  url "https://www.publicspace.net/download/signedVitamin#{version.major}.zip"
  name "Vitamin-R"
  desc "Collection of productivity tools and techniques"
  homepage "https://www.publicspace.net/Vitamin-R/"

  livecheck do
    url "https://www.publicspace.net/app/vitamin#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

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
