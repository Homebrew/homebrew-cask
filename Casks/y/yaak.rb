cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "2025.5.0"
  sha256 arm:   "4a0778d40080c281ffa3a98c64fa27679c8b9623beb927e5e5b42ea584104782",
         intel: "13f9b3b52cc3d390f36a98ff8b8b3d2f37c08562faa2252ed82693971f96776b"

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
