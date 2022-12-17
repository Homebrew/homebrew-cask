cask "tev" do
  version "1.24"
  sha256 "29139d0ac1a9a90be9961c28b6f57e1d79cc19da9122d4aea925af5fc09cfa23"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev.dmg"
  name "tev"
  desc "HDR image comparison tool with an emphasis on OpenEXR images"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :catalina"

  app "tev.app"

  zap trash: "~/Library/Preferences/org.tom94.tev.plist"
end
