cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "2024.12.1"
  sha256 arm:   "f268976584beee63fdf343a80ecd00d6beba56d1e3933fde067f6cf7640fceb5",
         intel: "72f67494f1db8af4cd6f97858f10b77cea2f2ecca98666b458677d13580c7c0e"

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
