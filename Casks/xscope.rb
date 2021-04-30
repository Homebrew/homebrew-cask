cask "xscope" do
  version "4.5,106"
  sha256 "53caac78a93f0eb3e1acfff5688515959f587715e6609fade108f8e6e7b67ade"

  url "https://downloads.iconfactory.com/xscope/xScope-#{version.before_comma}+#{version.after_comma}.zip",
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
