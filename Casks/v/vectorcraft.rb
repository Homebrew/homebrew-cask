cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.10.0"
  sha256 arm:          "c0e6d3de60d9c4217830f65e136a6a8f9381881c2525dae0558292cd36352e29",
         intel:        "c0e6d3de60d9c4217830f65e136a6a8f9381881c2525dae0558292cd36352e29",
         arm64_linux:  "65cc3c24bd2152c14756a9cecb14f67c198b32fdae07640f5127cb89271840f7",
         x86_64_linux: "2d2d89587014465c3096a6e456d73a73bb6aec104ec0ed213a406a148026c029"

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
