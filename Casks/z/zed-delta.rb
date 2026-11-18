cask "zed-delta" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "macos/aarch64/Delta.app.zip",
                                  linux: "delta-linux-#{arch}.tar.gz"

  version "0.28.0"
  sha256 arm:          "dd0a007c191149a6d1e209f12aef8fcca39ffcb1b587be880ae66a3ce43906e2",
         arm64_linux:  "d9bfea1ad2c45d74c33cb21f6fa6a3234902ba4571b3688e0e3d58f5468a3e49",
         x86_64_linux: "2ebc897ed73941da2c20868c9ee5ff3c372a5dedc61f23926d87d7d19ba10813"

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
