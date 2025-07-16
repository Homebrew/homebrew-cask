cask "uefitool" do
  version "A72"
  sha256 "af849fe60ddc3fd8d26c38c4ec5eb6eeda8e2cbb1534f289249559f283804c44"

  url "https://github.com/LongSoft/UEFITool/releases/download/#{version}/UEFITool_NE_#{version}_universal_mac.dmg"
  name "UEFITool"
  desc "UEFI firmware image viewer"
  homepage "https://github.com/LongSoft/UEFITool"

  livecheck do
    url :url
    regex(/^(A\d+)$/)
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "UEFITool.app"

  zap trash: "~/Library/Preferences/me.coderush.UEFITool.plist"
end
