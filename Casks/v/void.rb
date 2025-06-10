cask "void" do
  arch arm: "arm64", intel: "x64"

  version "1.99.30039"
  sha256 arm:   "f0e38cb00fc43ccc4719a9860c4da7d02851f71497e3c47f095b2bc71cfed81d",
         intel: "b71729eedba65487acee1166157ed2295a026f3bef13ebced1ed505039b9b98e"

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
