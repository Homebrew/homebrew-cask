cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.22.0"
  sha256 arm:          "29eace31f0f1472f87d35d7f90bb09b8374413c4ac1adfb1f537431dc148fb60",
         intel:        "29eace31f0f1472f87d35d7f90bb09b8374413c4ac1adfb1f537431dc148fb60",
         arm64_linux:  "30774df9c03fc76b6ad4adfbf2e2433351c4f3711caf6956620996d0bdfad0b9",
         x86_64_linux: "09a68d22232530219c12643bb7e9eda6b1f6778cbf9f2f2fc46ff96e2259f7b0"

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
