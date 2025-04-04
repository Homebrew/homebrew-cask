cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "2025.1.2"
  sha256 arm:   "e977fe7c3d686527ba1c1a910d0a701863bd60164234512bce8da4141f8b2e26",
         intel: "59c35812225866a4bbddfc49eb927d9d0d4ab8d8e2e8987340d3adc9ded67b42"

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
