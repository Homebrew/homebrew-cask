cask "wpsoffice" do
  arch arm: "arm64", intel: "x64"

  version "6.10.2,0024.21300060"
  sha256 arm:   "8d922751369855ac070b3fcdcf36f6abdf14157f7827efe69830004072cee140",
         intel: "b8911c6ece98ba068896feba3fa28f18d63db783de6a462c198f97f65be23462"

  url "https://wdl1.pcfg.cache.wpscdn.com/wpsdl/macwpsoffice/download/installer/WPSOffice_#{arch}_#{version.csv.second}.dmg",
      verified: "wdl1.pcfg.cache.wpscdn.com/"
  name "WPS Office"
  desc "All-in-one office suite"
  homepage "https://www.wps.com/mac/"

  livecheck do
    skip "No version information available"
  end

  conflicts_with cask: "wpsoffice-cn"
  depends_on macos: ">= :sierra"

  app "wpsoffice.app"

  uninstall quit: "com.kingsoft.wpsoffice.mac.global"

  zap trash: [
    "~/Library/Application Scripts/com.kingsoft.wpsoffice.mac.global",
    "~/Library/Containers/com.kingsoft.wpsoffice.mac.global",
  ]
end
