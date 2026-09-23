cask "yaak" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "Yaak", linux: "yaak"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  sha256 arm:          "5ed4797ffbda5424d73271b2e5c6c73b0ed7ebca7f8f9772b3494af29d09c84d",
         intel:        "29e0866f57d42673d6e8ce7521e1a789d6948c8a97532c5937c5a93e62ec1e41",
         arm64_linux:  "d3409d8e8f7dbfdc53642b443b941b0a66fbd5988f8d55dacfa6322b05c01b51",
         x86_64_linux: "9d9597db83477246065ed436627b5d14087f6513da70747f6004650946dbe8d6"

  on_arm do
    version "2026.8.1"
  end
  on_intel do
    version "2026.8.1"
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
