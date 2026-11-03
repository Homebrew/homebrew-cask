cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.21.0"
  sha256 arm:          "cee7434dd52d7e783d3f9810ee008f3a93b873da5a5ec7801a670ea93787c7e2",
         intel:        "cee7434dd52d7e783d3f9810ee008f3a93b873da5a5ec7801a670ea93787c7e2",
         arm64_linux:  "80c48decc4eab641766199d0a1dc87b7948c3776e4d31ad7f5c7ba9338b0da97",
         x86_64_linux: "94444a0970f495e2251435e60fe3dbead77f7b136bf334547426a920cf2e9858"

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
