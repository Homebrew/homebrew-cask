cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "2024.11.0"
  sha256 arm:   "36429f7c835a6f172422429f9858e7b82dd0af7e0f9d413203469f03d0c7de39",
         intel: "9178605aa68329313c7c9595f20b077ba00007bea3032870a497637d88d0bec0"

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
