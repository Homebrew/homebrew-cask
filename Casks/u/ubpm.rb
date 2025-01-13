cask "ubpm" do
  version "1.12.0"
  sha256 "898622ba741a3021f45b314c140c22aba2f82e570476d50be6461d2b3fc5ad29"

  url "https://codeberg.org/LazyT/ubpm/releases/download/#{version}/ubpm_qt6-#{version}-x86_64.dmg"
  name "ubpm"
  desc "Universal Blood Pressure Manager"
  homepage "https://codeberg.org/LazyT/ubpm"

  livecheck do
    url "https://codeberg.org/LazyT/ubpm/releases/latest"
    strategy :page_match
    regex(/ubpm_qt6[._-]v?(\d+(?:\.\d+)+)[._-]x86_64\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "ubpm.app"

  zap trash: [
    "~/Library/Application Support/ubpm",
    "~/Library/Caches/ubpm",
    "~/Library/Preferences/ubpm",
    "~/Library/Saved Application State/page.codeberg.lazyt.ubpm.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
