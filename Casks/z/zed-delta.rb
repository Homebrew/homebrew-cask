cask "zed-delta" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "macos/aarch64/Delta.app.zip",
                                  linux: "delta-linux-#{arch}.tar.gz"

  version "0.27.0"
  sha256 arm:          "57d14c5fc2e7e6505fcb2037da130e08a9233c17fd486877c7aa4cfe36a520f3",
         arm64_linux:  "5dfd64274e2c072849cd2273a479f5d98c80a8372d887fe19914291d674bc26f",
         x86_64_linux: "340ac175dfa1595cf2b5de7c51b3a62582ad4c25565e103be5fe16b9d568dc34"

  on_macos do
    depends_on arch: :arm64
    depends_on macos: :ventura

    app "Delta.app"
    binary "#{appdir}/Delta.app/Contents/MacOS/delta"

    uninstall quit: "com.zed-industries.delta"

    zap trash: [
      "~/.config/delta",
      "~/Library/Application Support/delta",
      "~/Library/Caches/delta-ipc",
      "~/Library/Preferences/com.zed-industries.delta.plist",
    ]
  end
  on_linux do
    binary "Delta/bin/delta"
    artifact "Delta/share/applications/dev.zed.Delta.desktop",
             target: "~/.local/share/applications/dev.zed.Delta.desktop"

    preflight_steps do
      inreplace "Delta/share/applications/dev.zed.Delta.desktop", "Exec=delta",
                "Exec={{staged_path}}/Delta/bin/delta"
      inreplace "Delta/share/applications/dev.zed.Delta.desktop", "Icon=dev.zed.Delta",
                "Icon={{staged_path}}/Delta/share/icons/hicolor/512x512/apps/dev.zed.Delta.png"
    end

    zap trash: [
      "~/.cache/delta-ipc",
      "~/.config/delta",
      "~/.local/share/delta",
    ]
  end

  url "https://releases.delta.dev/releases/stable/#{version}/#{url_end}"
  name "Delta"
  desc "Multiplayer environment for coding with agents"
  homepage "https://delta.dev/"

  livecheck do
    url "https://delta.dev/api/releases/stable/latest/asset?asset=delta&os=#{os}&arch=#{arch}"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
end
