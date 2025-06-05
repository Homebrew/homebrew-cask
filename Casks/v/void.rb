cask "void" do
  arch arm: "arm64", intel: "x64"

  version "1.99.30037"
  sha256 arm:   "d3edf0c8598b1c8ddd8189211ca45ba5659886154d65c8f80c4a84379d14fff6",
         intel: "8788b56a1877a62971c8b446539edb127a1d2259a01b79b37f1e76cbfd046deb"

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
