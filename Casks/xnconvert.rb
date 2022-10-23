cask "xnconvert" do
  version "1.96.0"
  sha256 :no_check

  url "https://download.xnview.com/XnConvert-mac.dmg"
  name "XnSoft XnConvert"
  desc "Image-converter and resizer tool"
  homepage "https://www.xnview.com/en/xnconvert/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "XnConvert.app"
end
