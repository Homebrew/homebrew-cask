cask "yaak" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "Yaak", linux: "yaak"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2026.6.0"
  sha256 arm:          "8fa3bf2b79ac61213d94d8c1ecab348e6826135fe81017fb2dbb2a122df41413",
         intel:        "1170721b4d4d26623fd989021b8097f1ccb9acbe08acb9431ecd1d4dbdd98174",
         arm64_linux:  "0f13dd8c09d713a91cddd9a731b952edc4fd85dc2cf378dc338b80ba067a7eb1",
         x86_64_linux: "8866631b6247d3ef4a29ac9d42eb5aca5efeacafea5c26e4231f7fd30dec4249"

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
  name "Yaak"
  desc "REST, GraphQL and gRPC client"
  homepage "https://yaak.app/"

  livecheck do
    url "https://update.yaak.app/check/darwin/#{arch}/#{version}"
    strategy :json do |json|
      json["version"]
    end
  end

  conflicts_with cask: "yaak@beta"
end
