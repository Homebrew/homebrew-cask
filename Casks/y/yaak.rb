cask "yaak" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "2026.5.0"
  sha256 arm:          "c191f08eb7796475a6fadbe22b0b38bffb2fc211aa5a591d4061d7a0dc4e427a",
         intel:        "5b2f99424e01b0c8f536c90b29ee8c96c187c8e3ac3c9e5bb774830ef6414c43",
         arm64_linux:  "237820abde1836b338c70c6f5a1dc1f331f47f2950c7aa6e7c39283f41b7d18c",
         x86_64_linux: "fbebec36428fd4528812261b64c23a14de42e80e9e18363fc4ab800c103d556d"

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
