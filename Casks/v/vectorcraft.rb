cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.24.0"
  sha256 arm:          "f1a0471273742dad0d4d37934b5a60cd75ae163d8e5e1b8cf3739a47197baf12",
         intel:        "f1a0471273742dad0d4d37934b5a60cd75ae163d8e5e1b8cf3739a47197baf12",
         arm64_linux:  "998a28e55a00120d6193f3751a8b4c7f444f6181dbbb2ee8ecff4798437d6341",
         x86_64_linux: "a13720750a2afaa2f411ed7ebf95adc60dc336eca26352b15a14e429d7baf7f0"

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
