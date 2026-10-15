cask "yaak" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "Yaak", linux: "yaak"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  sha256 arm:          "ded7f8bd79cfc6d557d04097f87030f49fb266d701b511cd66e03004cc7f9408",
         intel:        "7ad2dbd820155867457f3dc05260138cbb6dacf17650425e9892e939b3914d40",
         arm64_linux:  "cc55764631d2c4208e00269320d20e8345e22b19a69e04adb9fcd1f8230c8e9a",
         x86_64_linux: "f5b1efd902748a2468e5220592520ae4b24e2c9abd106fee326bef5e849f02ab"

  on_arm do
    version "2026.9.0"
  end
  on_intel do
    version "2026.9.0"
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
