cask "yaak" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "Yaak", linux: "yaak"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  sha256 arm:          "b0713cba9727a2b324895a6ea189877619b16a23eda467a13bf17d78fd78d5ce",
         intel:        "1170721b4d4d26623fd989021b8097f1ccb9acbe08acb9431ecd1d4dbdd98174",
         arm64_linux:  "e59884783ac60b456f81427e27586892e330e621638c9bfccb8d63e757ada844",
         x86_64_linux: "8866631b6247d3ef4a29ac9d42eb5aca5efeacafea5c26e4231f7fd30dec4249"

  on_arm do
    version "2026.7.0"
  end
  on_intel do
    version "2026.6.0"
  end
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
