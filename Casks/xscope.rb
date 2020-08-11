cask "xscope" do
  version "4.4.1"
  sha256 "2a4de71cb6b6ee56b466ff26ba70c104b5f2a2455e1f61af852ac43c0f4e6e19"

  # iconfactory.com/ was verified as official when first introduced to the cask
  url "https://iconfactory.com/assets/software/xscope/xScope-#{version}.zip"
  appcast "https://iconfactory.com/appcasts/xScope/appcast.xml"
  name "xScope"
  desc "Tools for measuring, inspecting & testing on-screen graphics and layouts"
  homepage "https://xscopeapp.com/"

  app "xScope.app"

  zap trash: [
    "~/Library/Caches/com.iconfactory.xScope",
    "~/Library/Caches/com.iconfactory.xScope.cache",
    "~/Library/Preferences/com.iconfactory.xScope.plist",
  ]
end
