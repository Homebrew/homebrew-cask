cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.20.0"
  sha256 arm:          "9061ff391df0d7e4a843f9fba6c2d3ff3a2cf118d3f4cdb72f240dbdbec38b18",
         intel:        "9061ff391df0d7e4a843f9fba6c2d3ff3a2cf118d3f4cdb72f240dbdbec38b18",
         arm64_linux:  "a27a0732705293f5092adbe4daea19a968c52d823f14dfe09909f5212aad9091",
         x86_64_linux: "b625bae80558f95d94b9cd0ce74224d2a83180106dab2619559551cab216ead4"

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
