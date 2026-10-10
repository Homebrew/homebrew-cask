cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.8.0"
  sha256 arm:          "fae8d902309536873b9aa3c6521b28d8c7026cfe93a515ada4ee5e548bb9197c",
         intel:        "fae8d902309536873b9aa3c6521b28d8c7026cfe93a515ada4ee5e548bb9197c",
         arm64_linux:  "30c56b607cc9c7f8779724dc9ed1f5de64dc675f49925e20df2f6dfe3300adde",
         x86_64_linux: "8b1eb66ddac77c39c00a5f591759d8e7a49547a6e2e107706e7418b928e236aa"

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
