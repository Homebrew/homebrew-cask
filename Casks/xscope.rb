cask "xscope" do
  version "4.5.1,108"
  sha256 "d09a109b922d9c9d51a93e03b34683653826348b9ce4251f304d6cbdf39c5884"

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
