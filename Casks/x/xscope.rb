cask "xscope" do
  version "4.7.2,144"
  sha256 "5f2552030ea8ff74db1b9bea05fbf3ea7328fb1b780b216eec9e47ad80c24649"

  url "https://downloads.iconfactory.com/xscope/xScope-#{version.csv.first}+#{version.csv.second}.zip",
      verified: "downloads.iconfactory.com/"
  name "xScope"
  desc "Tools for measuring, inspecting & testing on-screen graphics and layouts"
  homepage "https://xscopeapp.com/"

  livecheck do
    url "https://iconfactory.com/appcasts/xScope/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "xScope.app"

  zap trash: [
    "~/Library/Caches/com.iconfactory.xScope",
    "~/Library/Caches/com.iconfactory.xScope.cache",
    "~/Library/Preferences/com.iconfactory.xScope.plist",
  ]
end
