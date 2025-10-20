cask "xnconvert" do
  version "1.106.0"
  sha256 "594a43a3dc1741b4aa5074db9058687903541af1cee5543518e6ae73d003701e"

  url "https://download.xnview.com/old_versions/XnConvert/XnConvert-#{version}-mac.dmg"
  name "XnSoft XnConvert"
  desc "Image-converter and resiser tool"
  homepage "https://www.xnview.com/en/xnconvert/"

  livecheck do
    url "https://download.xnview.com/old_versions/XnConvert/"
    regex(/href=.*XnConvert[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  app "XnConvert.app"

  zap trash: "~/Library/Preferences/com.xnview.XnConvert.plist"
end
