cask "tev" do
  version "1.17"
  sha256 "306f5f044d9ba7aa7aea1b227d6da8d649b92aa10341a019cce08473c9c99f38"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev.dmg"
  name "tev"
  desc "HDR image comparison tool. With an emphasis on OpenEXR images"
  homepage "https://github.com/Tom94/tev"

  depends_on macos: ">= :catalina"

  app "tev.app"

  zap trash: "~Library/Preferences/org.tom94.tev.plist"
end
