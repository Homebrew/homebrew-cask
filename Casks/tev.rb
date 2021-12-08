cask "tev" do
  version "1.19"
  sha256 "198b8c5d410cb1f5f55be3fd91b45fd4161d8d1e542486c5af6a7dc3b093bc32"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev.dmg"
  name "tev"
  desc "HDR image comparison tool. With an emphasis on OpenEXR images"
  homepage "https://github.com/Tom94/tev"

  depends_on macos: ">= :catalina"

  app "tev.app"

  zap trash: "~Library/Preferences/org.tom94.tev.plist"
end
