cask "vitamin-r" do
  on_high_sierra :or_older do
    version "3.31"
    sha256 "6c5ce3926060b7e3616527fc3c1f0d2a5cd8a0be4d9f5496c099a33be993312b"

    depends_on macos: ">= :el_capitan"
  end
  on_mojave :or_newer do
    version "4.15"
    sha256 "67186cf1af8895b405960fabe9cf3ba2dd6267adabaa22fac8cbeffbdb494f83"

    depends_on macos: ">= :mojave"
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
