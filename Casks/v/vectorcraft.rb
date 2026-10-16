cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.12.0"
  sha256 arm:          "e47987d0e90fa1c629cf1328d83b91f82680b4c02d06794bdf5e3eb0b2c4dc7b",
         intel:        "e47987d0e90fa1c629cf1328d83b91f82680b4c02d06794bdf5e3eb0b2c4dc7b",
         arm64_linux:  "e128becdde7f2e89f80ae3ff1abaff2b759ee519bdb5adb6952d8e5a3612cf5c",
         x86_64_linux: "d0b9c41f3754297f7c6892f7129db88f41e7e718e452d795d3c1c4e9e3eb448b"

  on_macos do
    app "VectorCraft.app"

    zap trash: "~/Library/Preferences/ai.storyteller.vectorcraft.plist"
  end
  on_linux do
    app_image "vectorcraft-#{version}-linux-#{arch}.AppImage", target: "VectorCraft.AppImage"
  end

  url "https://github.com/storytold/vectorcraft/releases/download/v#{version}/vectorcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "VectorCraft"
  desc "Vector editor"
  homepage "https://getartcraft.com/apps/vectorcraft"
end
