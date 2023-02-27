cask "xit" do
  arch arm: "-arm"

  version "1.0b17"
  sha256 arm:   "6b44a102747811e0373737e24104902dc1d8aaf8801fc83c0e77622bab1b12fa",
         intel: "7b25b255a1af84261321b40ac08c31311bbff73a13be2c523862863be0bba620"

  url "https://github.com/Uncommon/Xit/releases/download/#{version}/Xit#{arch}.#{version}.zip"
  name "Xit"
  desc "GUI for the git version control system"
  homepage "https://github.com/Uncommon/Xit"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:b\d+)?)$/i)
  end

  depends_on macos: ">= :monterey"

  app "Xit#{arch} #{version}/Xit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.uncommonplace.xit.sfl*",
    "~/Library/Caches/com.uncommonplace.Xit",
    "~/Library/Preferences/com.uncommonplace.Xit.plist",
    "~/Library/Saved Application State/com.uncommonplace.Xit.savedState",
  ]
end
