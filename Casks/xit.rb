cask "xit" do
  on_big_sur :or_older do
    version "1.0b16"
    sha256 "0e9897d16a5a613a4da9861c907e1f0922df446cc88628e13271793a6c94b229"

    url "https://github.com/Uncommon/Xit/releases/download/#{version}/Xit.zip"

    depends_on macos: ">= :mojave"

    app "Xit.app"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    arch arm: "-arm"

    version "1.0b17"
    sha256 arm:   "6b44a102747811e0373737e24104902dc1d8aaf8801fc83c0e77622bab1b12fa",
           intel: "7b25b255a1af84261321b40ac08c31311bbff73a13be2c523862863be0bba620"

    url "https://github.com/Uncommon/Xit/releases/download/#{version}/Xit#{arch}.#{version}.zip"

    depends_on macos: ">= :monterey"

    app "Xit#{arch} #{version}/Xit.app"

    livecheck do
      url :url
      regex(/^v?(\d+(?:\.\d+)+(?:b\d+)?)$/i)
    end
  end

  name "Xit"
  desc "GUI for the git version control system"
  homepage "https://github.com/Uncommon/Xit"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.uncommonplace.xit.sfl*",
    "~/Library/Caches/com.uncommonplace.Xit",
    "~/Library/Preferences/com.uncommonplace.Xit.plist",
    "~/Library/Saved Application State/com.uncommonplace.Xit.savedState",
  ]
end
