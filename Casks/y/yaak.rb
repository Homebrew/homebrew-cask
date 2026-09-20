cask "yaak" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "Yaak", linux: "yaak"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  sha256 arm:          "df110eed6c1b39dfb0fcefb4131b71f07135ec246b72b772ef8f8d31e20c8aed",
         intel:        "997e18f1e116f2048d4151735b2d2e4d814efbc2f2d3192cc600b01ea0a9ab70",
         arm64_linux:  "f2856f1d3eb374faa564e717ca69183bf1797ed471cb47bfe46147fd49ea3ac3",
         x86_64_linux: "6022c792246a60c50cb06ff61455deff0a7b6eeed876e9da844518a8116315e4"

  on_arm do
    version "2026.8.0"
  end
  on_intel do
    version "2026.7.1"
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
