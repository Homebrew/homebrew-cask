cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.21.1"
  sha256 arm:          "27fd4d3ed472d92eb68154ca75cf25cb856682626715632b2abac2551f3c08bf",
         intel:        "27fd4d3ed472d92eb68154ca75cf25cb856682626715632b2abac2551f3c08bf",
         arm64_linux:  "42c9aaf9578454a5a42eea1a8746c3b2a150193c51de9cf1b12e7c289e693be2",
         x86_64_linux: "7865429846119772dbd5dd9395cba88c7190cff5b92b17b141103ae7285c99e0"

  on_macos do
    app "VectorCraft.app"

    zap trash: [
      "~/Library/Application Support/VectorCraft",
      "~/Library/Preferences/ai.storyteller.vectorcraft.plist",
    ]
  end
  on_linux do
    app_image "vectorcraft-#{version}-linux-#{arch}.AppImage", target: "VectorCraft.AppImage"

    zap trash: "~/.config/vectorcraft"
  end

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "VectorCraft"
  desc "Vector editor"
  homepage "https://getartcraft.com/apps/vectorcraft"
end
