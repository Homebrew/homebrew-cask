cask "uefitool" do
  version "A76"
  sha256 "7f0290137e45e0df25f7cc9fbb8656524b3fb36cf7ee95c9a0879801eb596c94"

  url "https://github.com/LongSoft/UEFITool/releases/download/#{version}/UEFITool_NE_#{version}_universal_mac.dmg"
  name "UEFITool"
  desc "UEFI firmware image viewer"
  homepage "https://github.com/LongSoft/UEFITool"

  livecheck do
    url :url
    regex(/^(A\d+)$/i)
    strategy :github_latest
  end

  depends_on :macos

  app "UEFITool.app"

  zap trash: "~/Library/Preferences/me.coderush.UEFITool.plist"
end
