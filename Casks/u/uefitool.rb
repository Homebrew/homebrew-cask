cask "uefitool" do
  version "A73"
  sha256 "508ffe1de4e45098576b873c3c5fc61356cdb8e348bc5767caa7aa2c8d7fc56e"

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
