cask "xnconvert" do
  version "1.114.0"
  sha256 "42f97e41365609d6305dbb47b43556ca5f384c019d99b467aad188c05e2742b4"

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
