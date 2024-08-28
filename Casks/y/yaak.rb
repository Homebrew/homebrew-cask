cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "2024.8.2"
  sha256 arm:   "aa6c9ff7a2a7287604a598421826209dfb78ca4108b9f4da57d3594b72ac6f9b",
         intel: "b83a752c30dba856758dc32d8a6e20eb216642c6fd2de2466eaa1b8ff0a13331"

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
