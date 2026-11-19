cask "zed-delta" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "macos/aarch64/Delta.app.zip",
                                  linux: "delta-linux-#{arch}.tar.gz"

  version "0.28.1"
  sha256 arm:          "3d749fe6289c5d8988d8b722e91ee34a9e287b36b01d0df84e72da4c8e8eb9ec",
         arm64_linux:  "23a4a59bf9f84a8d2b50de788ae09c8a5c3a263bbfa5237eba201237f774b27a",
         x86_64_linux: "394183630f04a59584a39262b0551ed340bff0ff1ff6506d770f36bf45851adb"

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
