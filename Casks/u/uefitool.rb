cask "uefitool" do
  version "A74"
  sha256 "372a636996c6e61461179ed96ee3d019c7636037c4f753c851553ef45b8ea412"

  url "https://github.com/LongSoft/UEFITool/releases/download/#{version}/UEFITool_NE_#{version}_universal_mac.dmg"
  name "UEFITool"
  desc "UEFI firmware image viewer"
  homepage "https://github.com/LongSoft/UEFITool"

  livecheck do
    url :url
    regex(/^(A\d+)$/i)
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "UEFITool.app"

  zap trash: "~/Library/Preferences/me.coderush.UEFITool.plist"
end
