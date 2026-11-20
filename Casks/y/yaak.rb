cask "yaak" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "Yaak", linux: "yaak"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  sha256 arm:          "9e33bd239292fca9645a4ee6c29ced1cd40ca7a741d9dbcc18a3b1e142594ee8",
         intel:        "82793a5635db3f996a757b52f0f9c49461c6f45c9c36492c07c867ad09ed6ce7",
         arm64_linux:  "4db473d1750163b0d7648c5698edd4b04deb43fc847a9e9b4112dc06880edb36",
         x86_64_linux: "e9d0eb791a34c8d1278b359e732bbdc1626ff26a2c1766672b248f41f544d59b"

  on_arm do
    version "2026.9.1"
  end
  on_intel do
    version "2026.9.1"
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

    zap trash: [
      "~/.config/app.yaak.desktop",
      "~/.local/share/app.yaak.desktop",
    ]
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
