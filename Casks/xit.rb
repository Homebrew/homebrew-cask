cask "xit" do
  version "1.0b16"
  sha256 "0e9897d16a5a613a4da9861c907e1f0922df446cc88628e13271793a6c94b229"

  url "https://github.com/Uncommon/Xit/releases/download/#{version}/Xit.zip"
  name "Xit"
  desc "GUI for the git version control system"
  homepage "https://github.com/Uncommon/Xit"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:b\d+)?)$/i)
  end

  depends_on macos: ">= :mojave"

  app "Xit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.uncommonplace.xit.sfl*",
    "~/Library/Caches/com.uncommonplace.Xit",
    "~/Library/Preferences/com.uncommonplace.Xit.plist",
    "~/Library/Saved Application State/com.uncommonplace.Xit.savedState",
  ]
end
