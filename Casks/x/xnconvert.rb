cask "xnconvert" do
  version "1.112.0"
  sha256 "7f9211670fe6af7705bdb4f93df73d0158d5436a29e70101108c6bfc84e09cb3"

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
