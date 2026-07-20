cask "xnconvert" do
  version "1.112.0"
  sha256 "65162b95a9e8a85c1aa63cea5dd0d4cd2cc94524fc2503ab8855d49cc1ec11e3"

  url "https://download.xnview.com/old_versions/XnConvert/XnConvert-#{version}-mac.dmg"
  name "XnSoft XnConvert"
  desc "Image-converter and resiser tool"
  homepage "https://www.xnview.com/en/xnconvert/"

  livecheck do
    url "https://download.xnview.com/old_versions/XnConvert/"
    regex(/href=.*XnConvert[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on :macos

  app "XnConvert.app"

  zap trash: "~/Library/Preferences/com.xnview.XnConvert.plist"
end
