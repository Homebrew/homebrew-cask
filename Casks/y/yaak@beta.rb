cask "yaak@beta" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "2026.5.0-beta.4"
  sha256 arm:          "bfbb15f08f0f101ec12f4cceea67c117109688315883b30a72f20c343eb16ca5",
         intel:        "f3669be386377805df5ebcae78f31769ba49e1c9cda90f67e848d64a4e2b8b76",
         arm64_linux:  "b4050fd9659fc021a47ff2819fbbc22e10a68ef9253bf05826a28225adac512f",
         x86_64_linux: "050b2b4fcb1801dfcc62688ee1745824cbb6083022ed198b1b25b89da3e0315a"

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
    app_image artifact, target: "Yaak.AppImage"
  end
end
