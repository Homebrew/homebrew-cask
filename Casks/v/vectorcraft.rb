cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.0"
  sha256 arm:          "0bd3f5ea47293cd6a55001463089bea3c6d98e5ba657fa006799c2be8787505a",
         intel:        "0bd3f5ea47293cd6a55001463089bea3c6d98e5ba657fa006799c2be8787505a",
         arm64_linux:  "297f7bdb7739c907d40a00fe3a5c083e18338714e5e883334d9ffb9f45d77052",
         x86_64_linux: "e4984887bdb980196dea241e86831e54613ccfd434e4eb74b7498ada2bb549e3"

  on_macos do
    app "VectorCraft.app"

    zap trash: [
      "~/Library/Application Support/VectorCraft",
      "~/Library/Preferences/ai.storyteller.vectorcraft.plist",
    ]
  end
  on_linux do
    app_image "vectorcraft-#{version}-linux-#{arch}.AppImage", target: "VectorCraft.AppImage"
  end

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "VectorCraft"
  desc "Vector editor"
  homepage "https://getartcraft.com/apps/vectorcraft"
end
