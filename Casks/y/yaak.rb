cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "2024.10.0"
  sha256 arm:   "bea4e1ade73fda4db16f0be7fd0ef1818c333bd52c46ca7f0bf6248667620fb5",
         intel: "4ad0799ec59ccc3e7f8d6548518b6cd55b4acf49cc6924b2dff2d308c49b742f"

  url "https://github.com/yaakapp/app/releases/download/v#{version}/Yaak_#{version}_#{arch}.dmg",
      verified: "github.com/yaakapp/app/"
  name "Yaak"
  desc "REST, GraphQL and gRPC client"
  homepage "https://yaak.app/"

  livecheck do
    url "https://update.yaak.app/check/darwin/#{arch}/0"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :high_sierra"

  app "yaak.app"

  zap trash: [
    "~/Library/Application Support/app.yaak.desktop",
    "~/Library/Caches/app.yaak.desktop",
    "~/Library/Logs/app.yaak.desktop",
    "~/Library/Saved Application State/app.yaak.desktop.savedState",
    "~/Library/Webkit/app.yaak.desktop",
  ]
end
