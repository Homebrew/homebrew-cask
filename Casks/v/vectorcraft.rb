cask "vectorcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.23.0"
  sha256 arm:          "8bee3c5429487e708f95469c6568f750c700f97b86483a6f6cbfd0769b25be1b",
         intel:        "8bee3c5429487e708f95469c6568f750c700f97b86483a6f6cbfd0769b25be1b",
         arm64_linux:  "2ae656a187f4adaa288c6ebfa6fd7fa66e00db8a51e5797f175f2f2f81701cc7",
         x86_64_linux: "8a130f448fa8dff0a279dcefca56229f5702cb341123263436d587c45be2a8e4"

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
