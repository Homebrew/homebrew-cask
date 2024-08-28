cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "2024.8.1"
  sha256 arm:   "c913fed25781541c341ab5aa60c5e17f5afc73001e9d1765a0c5814aedb2d51d",
         intel: "6d21d5edde7995a81bc076cfccdf8fd82a60e0fb928df6e0b4ae05bded6c74a1"

  url "https://releases.yaak.app/releases/#{version}/Yaak_#{version}_#{arch}.dmg"
  name "Yaak"
  desc "REST, GraphQL and gRPC client"
  homepage "https://yaak.app/"

  livecheck do
    url "https://yaak.app/download"
    regex(/href=.*?yaak[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
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
