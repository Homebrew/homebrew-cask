cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.13.1"
  sha256 arm:          "b932c38927a007f30218c4ed404a5c48a3f41674d6e4c560a662c7ffdbdb706f",
         intel:        "b932c38927a007f30218c4ed404a5c48a3f41674d6e4c560a662c7ffdbdb706f",
         arm64_linux:  "c5cfac1f67d6262c0f599b2073986e45d1e0d4b4507b72f675e3308f637b020c",
         x86_64_linux: "95457bb9b48bc6344124c2bf32a106006548aa594b1b8d1d8ca47d52a30e577e"

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
