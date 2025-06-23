cask "void" do
  arch arm: "arm64", intel: "x64"

  version "1.99.30043"
  sha256 arm:   "5eb6143b06e20d922df0f67d284e3bc05c85fc0b45cde253149093f9a1e1f4cd",
         intel: "3f2771ce5e5760f1cd6f3a2fb053e57274706a1dbf60633c0b4ac230b8b020ee"

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
