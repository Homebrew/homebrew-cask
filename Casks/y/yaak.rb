cask "yaak" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "2026.4.0"
  sha256 arm:          "d2a05e7782919589564284868312bf040a4cb3d437aa78cb83258985fe65bb02",
         intel:        "592d2580f471861a70e9c98e86e743083810b4e9b665595451cbc316974277f7",
         arm64_linux:  "6e93a8d02559ba991d6d44cf896b554e567c53597041a337f680d0f826d17695",
         x86_64_linux: "bc8dcc5ef79028f9e56002615718561a4d37090a645f9c9cde8f65401780ca48"

  artifact = on_system_conditional macos: "Yaak_#{version}_#{arch}.dmg",
                                   linux: "yaak_#{version}_#{arch}.AppImage"

  url "https://github.com/mountain-loop/yaak/releases/download/v#{version}/#{artifact}",
      verified: "github.com/mountain-loop/yaak/"
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
