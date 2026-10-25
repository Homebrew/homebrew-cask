cask "xnconvert" do
  version "1.118.0"
  sha256 "2d1e64bcb12e9d84788cca5ca9eb97bda2d7f07eaff7ff2f0b24aafbebeae597"

  url "https://download.xnview.com/old_versions/XnConvert/XnConvert-#{version}-mac.dmg"
  name "XnSoft XnConvert"
  desc "Image-converter and resiser tool"
  homepage "https://www.xnview.com/en/xnconvert/"

  livecheck do
    url "https://download.xnview.com/old_versions/XnConvert/"
    regex(/href=.*?XnConvert[._-]v?(\d+(?:\.\d+)+)[._-]mac\.dmg/i)
  end

  depends_on macos: :monterey

  app "XnConvert.app"

  uninstall quit: "com.xnview.XnConvert"

  zap trash: "~/Library/Preferences/com.xnview.XnConvert.plist"
end
