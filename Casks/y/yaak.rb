cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "2024.11.1"
  sha256 arm:   "237d5601e9942d8c150762bb8a48a1d3d989bd55c039aeb05dbb7dec97afc0d5",
         intel: "1adfed14d655edf49f21e6226883f94f05aef20fbbf3241654edb22c410d3b86"

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
