cask "yaak@beta" do
  arch arm: "aarch64", intel: "x64"

  version "2025.2.0-beta.9"
  sha256 arm:   "707bee62deae9d13be73dd36c2c8b944ea3c9f5eb9f05715df1388e949f83cc9",
         intel: "921411f741de759bebfdf34c496599a659115f32db2de06b156361858293cb67"

  url "https://github.com/mountain-loop/yaak/releases/download/v#{version}/Yaak_#{version}_#{arch}.dmg",
      verified: "github.com/mountain-loop/yaak/"
  name "Yaak Beta"
  desc "REST, GraphQL and gRPC client"
  homepage "https://yaak.app/"

  # Beta releases of the app use the same update URL as stable releases but an
  # `x-update-mode: beta` request header is used to retrieve beta updates
  # instead. livecheck doesn't support setting arbitrary headers in `livecheck`
  # blocks yet, so we check GitHub for now. It's necessary to check releases
  # instead of Git tags, as there can be a notable gap between tag and release.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:[._-](?:beta|rc)[._-]\d+)?)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  conflicts_with cask: "yaak"
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
