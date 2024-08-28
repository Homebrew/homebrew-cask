cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "2024.8.2"
  sha256 arm:   "d8c359e2444e7b94f18e1bc56d6cd8b630cde2d49ecbff3f4cbbb70c4544dcd0",
         intel: "8432a2d4b426b3b885e6061cfc4709303e73513c031ce955eade36236f8b8401"

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
