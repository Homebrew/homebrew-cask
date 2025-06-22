cask "void" do
  arch arm: "arm64", intel: "x64"

  version "1.99.30040"
  sha256 arm:   "32d4cc938b19bce6b3f0d6c746cbec216abf5334d99254b684c229b9cfda0b5a",
         intel: "2e2594650e3708d7cc93ccafd2073278140331fda5e84695d171b27a88912f83"

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
