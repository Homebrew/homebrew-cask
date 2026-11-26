cask "zed-delta" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "macos/aarch64/Delta.app.zip",
                                  linux: "delta-linux-#{arch}.tar.gz"

  version "0.29.1"
  sha256 arm:          "59b9c51229314c6e356c5e01810e33cb943330269ed5c79cec604ca48ad0f037",
         arm64_linux:  "2a8890d34522d965891b3fc50cb7d3bcb40798d6cbcaf519b6f7d46cd03b6c89",
         x86_64_linux: "719ee9bff97f9e732cc87960d4c8e36c471355768297cc5fdeec62953722ddc8"

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
