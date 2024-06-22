cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "2024.6.6"
  sha256 arm:   "b91564f1b42587abc27a79b245b64367dcf0474fa5812a29c8ec39dd840e17ab",
         intel: "d64ecd5245ed0eb7ad8f75182618b929644d7e4ad1590a24feb130f8affaeee6"

  url "https://releases.yaak.app/releases/#{version}/yaak_#{version}_#{arch}.dmg"
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
