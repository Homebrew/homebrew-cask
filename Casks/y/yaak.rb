cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "2026.1.0"
  sha256 arm:   "f17a0b3a762668f5b5035a6c2c487b484becd16795d3f43e97d39039451c450b",
         intel: "94e8d81395c519f243eb97f081db657cd2703eb294e477e8abbb38a639a45d14"

  url "https://github.com/mountain-loop/yaak/releases/download/v#{version}/Yaak_#{version}_#{arch}.dmg",
      verified: "github.com/mountain-loop/yaak/"
  name "Yaak"
  desc "REST, GraphQL and gRPC client"
  homepage "https://yaak.app/"

  livecheck do
    url "https://update.yaak.app/check/darwin/#{arch}/#{version}"
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
