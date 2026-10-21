cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.14.0"
  sha256 arm:          "29630c9c4dbc5be351b378f0775feed617a7cc599b93859cb98e3f7d379bcd7b",
         intel:        "29630c9c4dbc5be351b378f0775feed617a7cc599b93859cb98e3f7d379bcd7b",
         arm64_linux:  "5aadfa7919085a543ab5261d77c4c38d64096493ca7a49e22da32880926fad94",
         x86_64_linux: "89757a1e806164b95eae2cef9bdf98bf1a03ef10a9b2cc8a50bd05c54b74c792"

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
