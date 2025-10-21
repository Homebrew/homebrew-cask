cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "2025.7.0"
  sha256 arm:   "4d54aa158d37f3a5e6c04e716e6a7fad7ca2dd0dcf84677992b9a1775167aee6",
         intel: "f4d34a856974eae67d6f10d1754e54781b92b4443905b6c2db921868a158a90e"

  url "https://github.com/mountain-loop/yaak/releases/download/v#{version}/Yaak_#{version}_#{arch}.dmg",
      verified: "github.com/mountain-loop/yaak/"
  name "Yaak"
  desc "REST, GraphQL and gRPC client"
  homepage "https://yaak.app/"

  livecheck do
    url "https://update.yaak.app/check/darwin/#{arch}/0"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  conflicts_with cask: "yaak@beta"
  depends_on macos: ">= :ventura"

  app "yaak.app"

  zap trash: [
    "~/Library/Application Support/app.yaak.desktop",
    "~/Library/Caches/app.yaak.desktop",
    "~/Library/Logs/app.yaak.desktop",
    "~/Library/Saved Application State/app.yaak.desktop.savedState",
    "~/Library/Webkit/app.yaak.desktop",
  ]
end
