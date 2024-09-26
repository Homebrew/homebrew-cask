cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "2024.10.1"
  sha256 arm:   "98b2583e16c2c75449e6e470915bf8ee0ccd75c2bf3aa37833f5715fef0393df",
         intel: "77251581ebea3062949be722c16d71db60070b1331c375b7e15c9e6e65d72d8c"

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
