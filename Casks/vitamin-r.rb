cask "vitamin-r" do
  if MacOS.version <= :el_capitan
    version "2.58"
    sha256 "c6c631430b44359aa022d9ca5ca6e98dbdf7258f2ceae0353f344a035682661e"
  else
    version "4.11"
    sha256 "3eea0d5a52b4d2090d7dcb5c28b1a0ceb83a433b53e2d3062ac00ac80c835e09"
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
