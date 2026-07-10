cask "uefitool" do
  version "A75"
  sha256 "34140173de7f5c8bcdcab98b354d350179831282bdd10a21058b93f8af26b772"

  url "https://github.com/LongSoft/UEFITool/releases/download/#{version}/UEFITool_NE_#{version}_universal_mac.dmg"
  name "UEFITool"
  desc "UEFI firmware image viewer"
  homepage "https://github.com/LongSoft/UEFITool"

  livecheck do
    url :url
    regex(/^(A\d+)$/i)
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "UEFITool.app"

  zap trash: "~/Library/Preferences/me.coderush.UEFITool.plist"
end
