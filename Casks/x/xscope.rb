cask "xscope" do
  version "4.7.1,141"
  sha256 "45fc050375ca39e747f5603fc37d9b22b8769a29d31491de557ed1f79c271397"

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

  app "xScope.app"

  zap trash: [
    "~/Library/Caches/com.iconfactory.xScope",
    "~/Library/Caches/com.iconfactory.xScope.cache",
    "~/Library/Preferences/com.iconfactory.xScope.plist",
  ]
end
