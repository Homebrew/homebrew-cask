cask "yaak@beta" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "Yaak", linux: "yaak"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2026.7.0-beta.7"
  sha256 arm:          "767446c60a04b91d50ba84d3819c2dd4e49407678fba3d0517b17a04b7f398b0",
         intel:        "000c902501f17942b045fe767efea42f2ca39e5ff6e19a3c4ed22ef0f400ad13",
         arm64_linux:  "91bc0b0f751a14c7e7918f5ffd3b9ee49aa1700e2eae0eb31d41bc7475577478",
         x86_64_linux: "9a2e980ac33837aaaa7e7ca2c1a5e207870ad5e0e6e5a5d9f121c284332b5557"

  on_macos do
    auto_updates true
    depends_on macos: :ventura

    app "Yaak.app"

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

  url "https://github.com/mountain-loop/yaak/releases/download/v#{version}/#{os}_#{version}_#{arch}.#{url_end}"
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
end
