cask "void" do
  arch arm: "arm64", intel: "x64"

  version "1.99.30034"
  sha256 arm:   "73ddeb9680c4e269ff023f672476f73471706e3f1eddcd08fa4488367d28aa28",
         intel: "b750d6c5923ff0536f2617b9e3590215688ca6dae1563d169da74b1345034faf"

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
