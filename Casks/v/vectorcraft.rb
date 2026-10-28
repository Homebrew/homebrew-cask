cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.18.0"
  sha256 arm:          "6e873fb39eaeb2e8ec5ea82bad366707d6ee4f3080b6157a625c52ef74633874",
         intel:        "6e873fb39eaeb2e8ec5ea82bad366707d6ee4f3080b6157a625c52ef74633874",
         arm64_linux:  "4312917dc0704d8967d1c3d37fc3854d5ae135631c17bb4ccb811ac1373ab2df",
         x86_64_linux: "9e0d487fc71b122e96f19b136d3acdb385eaa409f6d4a8034557f23562f2108a"

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
