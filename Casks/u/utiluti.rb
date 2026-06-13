cask "utiluti" do
  version "1.5"
  sha256 "70184b51e8ec0017ac6e2deae239ed82658902582982db574912ca8884fe061f"

  url "https://github.com/scriptingosx/utiluti/releases/download/v#{version}/utiluti-#{version}.pkg"
  name "utiluti"
  desc "Command-line tool to manage default apps and URL handlers"
  homepage "https://github.com/scriptingosx/utiluti"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  pkg "utiluti-#{version}.pkg"

  uninstall pkgutil: "com.scriptingosx.utiluti"

  zap trash: [
    "~/Library/Caches/com.scriptingosx.utiluti",
    "~/Library/HTTPStorages/com.scriptingosx.utiluti",
    "~/Library/Preferences/com.scriptingosx.utiluti.plist",
    "~/Library/Saved Application State/com.scriptingosx.utiluti.savedState",
  ]
end
