cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "2024.7.0"
  sha256 arm:   "eddb287a7e7bc3fa4f576835d24e8f9eb311e25d555384244f1bde3cb5f0c586",
         intel: "2b01ced6c714471d08dbe9d12d3877c03d4b71594dfb606cf115b4c3a491a691"

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
