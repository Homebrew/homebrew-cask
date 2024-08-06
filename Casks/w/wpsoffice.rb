cask "wpsoffice" do
  version "3.2.0,6370"
  sha256 "042636b16099802cd8e9145b2c5db3901c418bc744fee0f58ce032bda0952a95"

  url "https://wdl1.pcfg.cache.wpscdn.com/wpsdl/macwpsoffice/download/#{version.csv.first}.#{version.csv.second}/WPSOffice_#{version.csv.first}(#{version.csv.second}).dmg",
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
