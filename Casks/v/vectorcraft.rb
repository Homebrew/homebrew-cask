cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.7.0"
  sha256 arm:          "c9976419f038c0ecec2da569a4afc1717c2ffdaf54c7ab40d26b0c7f066ffa9e",
         intel:        "c9976419f038c0ecec2da569a4afc1717c2ffdaf54c7ab40d26b0c7f066ffa9e",
         arm64_linux:  "367f82b9c993bb3dcdd7238c4608f945df2532c8af00b6d59e639f2f19e6f953",
         x86_64_linux: "f6928f9adf423ad0a145ebfe3b142a95d3d26f550b05249c2012145701f98b60"

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
