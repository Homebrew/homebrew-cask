cask "xscope" do
  version "4.5.2,111"
  sha256 "f159f1244679507814f189b87134f507342a6035b613fd384de7f8d680c0d791"

  url "https://downloads.iconfactory.com/xscope/xScope-#{version.csv.first}+#{version.csv.second}.zip",
      verified: "downloads.iconfactory.com/"
  name "xScope"
  desc "Tools for measuring, inspecting & testing on-screen graphics and layouts"
  homepage "https://xscopeapp.com/"

  livecheck do
    url "https://iconfactory.com/appcasts/xScope/appcast.xml"
    strategy :sparkle
  end

  app "xScope.app"

  zap trash: [
    "~/Library/Caches/com.iconfactory.xScope",
    "~/Library/Caches/com.iconfactory.xScope.cache",
    "~/Library/Preferences/com.iconfactory.xScope.plist",
  ]
end
