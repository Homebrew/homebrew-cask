cask "xnconvert" do
  version "1.117.0"
  sha256 "53ab78eb6bae4132efa91d0fc94d9c62e544795bd90c3bc7294d1e8a6bae2de6"

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

  uninstall quit: "com.xnview.XnConvert"

  zap trash: "~/Library/Preferences/com.xnview.XnConvert.plist"
end
