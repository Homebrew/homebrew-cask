cask "void" do
  arch arm: "arm64", intel: "x64"

  version "1.99.30038"
  sha256 arm:   "0e2bb84db25558c7cc3712972ad973b9fcde9f5ee5ce339ca223ca2c0ada909a",
         intel: "00e43d08856e8778eeffcea63e7ac3c719967ea3efbe83613f03cf912b5c037e"

  url "https://github.com/voideditor/binaries/releases/download/#{version}/Void.#{arch}.#{version}.dmg",
      verified: "github.com/voideditor/"
  name "Void"
  desc "AI code editor"
  homepage "https://voideditor.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Void.app"
  binary "#{appdir}/Void.app/Contents/Resources/app/bin/void"

  zap trash: [
    "~/Library/Application Support/Void",
    "~/Library/Caches/com.voideditor.Void",
    "~/Library/Preferences/com.voideditor.Void.plist",
    "~/Library/Saved Application State/com.voideditor.Void.savedState",
  ]
end
