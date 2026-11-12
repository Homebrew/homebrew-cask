cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.24.1"
  sha256 arm:          "8dee5996b0d95fc0a8bc8b9d95cac24834a623cb08036a0cea8bb6c0e974caad",
         intel:        "8dee5996b0d95fc0a8bc8b9d95cac24834a623cb08036a0cea8bb6c0e974caad",
         arm64_linux:  "49b71c59f8d99a288eea9e9d6f502bdc72c48dc8b3afd54d00413102dba259e1",
         x86_64_linux: "bdce7e82e981f9f4ed0bf25fa6f25e6fe4fab27e89641e6f948899e01b13a514"

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
