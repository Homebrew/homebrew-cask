cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.15.0"
  sha256 arm:          "0276026e9ec8989a9c992482636f141e73da9ebed04af25efc93e667c60619cc",
         intel:        "0276026e9ec8989a9c992482636f141e73da9ebed04af25efc93e667c60619cc",
         arm64_linux:  "6aba778cfec3418d21c0835227b3ecc14e76402019f2624ceb8137f19edeaf8b",
         x86_64_linux: "985aeb9239fd99938d9757b3a3dbf69b5be89ef74f9bd8c014b5ae0b4d628a4b"

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
