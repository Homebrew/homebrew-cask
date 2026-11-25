cask "zed-delta" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "macos/aarch64/Delta.app.zip",
                                  linux: "delta-linux-#{arch}.tar.gz"

  version "0.28.4"
  sha256 arm:          "b612e9a27176570c792a625e2ea3578f2e878eaea4a588a324e7a925e75097d6",
         arm64_linux:  "d5b7db028a6c7768d56acdf4c56d0655823b4b1cd4dcc2cafe34b8ee2cb9303d",
         x86_64_linux: "9f8a1043b517ceae505eb12770755f7a0423bbe97b56baee3c29013017bbca03"

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
