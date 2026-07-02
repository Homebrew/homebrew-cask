cask "yaak@beta" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "2026.5.0-beta.1"
  sha256 arm:          "4955263b2f0d735d6ff62a473ee52c84183d3ee65558c4f8b7266ccf6a7ccd0c",
         intel:        "85c5acc0cc001ad34fa253ae4adaf7d8ae996b7d59eb8549970426c3a52f84dc",
         arm64_linux:  "6820801940299b1a43206036ecf4253e7f51877b514de08c4d54f4898f8ba0ce",
         x86_64_linux: "975c4bfd84ffb5f3a56ac5f1db84b1471b7e9b892a72c481388e74521176d321"

  artifact = on_system_conditional macos: "Yaak_#{version}_#{arch}.dmg",
                                   linux: "yaak_#{version}_#{arch}.AppImage"

  url "https://github.com/mountain-loop/yaak/releases/download/v#{version}/#{artifact}",
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

  conflicts_with cask: "yaak"

  on_macos do
    auto_updates true
    depends_on macos: :ventura

    app "yaak.app"

    zap trash: [
      "~/Library/Application Support/app.yaak.desktop",
      "~/Library/Caches/app.yaak.desktop",
      "~/Library/Logs/app.yaak.desktop",
      "~/Library/Saved Application State/app.yaak.desktop.savedState",
      "~/Library/Webkit/app.yaak.desktop",
    ]
  end

  on_linux do
    app_image "yaak_#{version}_#{arch}.AppImage", target: "Yaak.AppImage"
  end
end
