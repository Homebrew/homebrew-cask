cask "wpsoffice" do
  arch arm: "arm64", intel: "x64"

  version "6.10.2,0024.21300060"
  sha256 arm:   "3a90be5d9fb48e188f47273a15f66276a20b3b8d53db85ea01f742740e7aae39",
         intel: "0aa3c2b23f53ff8f56264b8a6dde601bfda4c9363a9760632a62d548a3c4d600"

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
