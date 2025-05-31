cask "void" do
  arch arm: "arm64", intel: "x64"

  version "1.99.30036"
  sha256 arm:   "52c098c1ea9a1fe827724a542c2a01a1f46c4f6957e65840b3a27372bcfb55d2",
         intel: "0122fc7261f8380058754ad035748e8a9ae1dde801035d877ee97f9f8184864a"

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
