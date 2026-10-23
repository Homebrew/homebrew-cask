cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.16.0"
  sha256 arm:          "442befd5daea3e473bfc7f8ed697b9af29df4442e31d3de40d6d028878c43b91",
         intel:        "442befd5daea3e473bfc7f8ed697b9af29df4442e31d3de40d6d028878c43b91",
         arm64_linux:  "bd5a8dd7094eee95ca67113cbc2fdafb94f4da0081e1afb29a0c7b5ea788e014",
         x86_64_linux: "8a1f22458d2b00940efd1a569dece25848fad18c75a5a77d5e8c4b7192a92319"

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
