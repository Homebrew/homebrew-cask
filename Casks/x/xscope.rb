cask "xscope" do
  version "4.6,115"
  sha256 "8d77b01b7959e797aad3e31852e4f39973b5197bec506b14ddb738f0ec0bb861"

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
