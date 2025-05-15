cask "void" do
  arch arm: "arm64", intel: "x64"

  version "1.99.30033"
  sha256 arm:   "cdf28a11fca4542fb9031c4d4874ac7de7b42d9ad2e2a2739b63742cff3b8521",
         intel: "6f5328a42ee5833af6496001e58f5c49d2bcd2facf3fdee775b2e5734eadacbf"

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

  zap trash: [
    "~/Library/Application Support/Void",
    "~/Library/Caches/com.voideditor.Void",
    "~/Library/Preferences/com.voideditor.Void.plist",
    "~/Library/Saved Application State/com.voideditor.Void.savedState",
  ]
end
