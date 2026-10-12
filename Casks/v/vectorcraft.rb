cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.9.0"
  sha256 arm:          "ac37cdff79f4bf75107c75ec78d65fd23cd8bc9ed7d895dca220acdc15b386e9",
         intel:        "ac37cdff79f4bf75107c75ec78d65fd23cd8bc9ed7d895dca220acdc15b386e9",
         arm64_linux:  "dd1bb31e40e5e492a9d1655bb35e0b64e5a460d3e0dec8f4f793bb0bdd798d22",
         x86_64_linux: "77eefa2c1ca7681e4b9aede638db314636da8d504aea107d48fb3367b6f61238"

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
