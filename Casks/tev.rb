cask "tev" do
  version "1.21"
  sha256 "3b2112008b0528b6c7caf0cc71c263e746b2921b2b1e674bc93f358343073cab"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev.dmg"
  name "tev"
  desc "HDR image comparison tool with an emphasis on OpenEXR images"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :catalina"

  app "tev.app"

  zap trash: "~/Library/Preferences/org.tom94.tev.plist"
end
