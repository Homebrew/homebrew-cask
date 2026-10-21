cask "zed" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  filename_start = on_system_conditional macos: "Zed", linux: "zed-linux"
  filename_ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "1.24.4"
  sha256 arm:          "fda9ce886dbb4860fb366c647d4c6407bed95a288b45dd43cc59732ef21d8670",
         intel:        "faac6bed5e4068c62cc9ba6fc63f1e7212e1ae1fa54b2574b519d2ef017130cc",
         arm64_linux:  "2b2c436f197a2c1197f2f7fd73220ef6f5af89462d95de970ff043d49e8a4700",
         x86_64_linux: "ecf2a7969fc71f74a7392b5022c3037c526108f9fe4b6da60355e259cd0dd4d2"

  on_macos do
    app "Zed.app"
    binary "#{appdir}/Zed.app/Contents/MacOS/cli", target: "zed"

    uninstall quit: "dev.zed.Zed"

    zap trash: [
      "~/.config/zed",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.zed.zed.sfl*",
      "~/Library/Application Support/Zed",
      "~/Library/Caches/dev.zed.Zed",
      "~/Library/Caches/Zed",
      "~/Library/HTTPStorages/dev.zed.Zed",
      "~/Library/Logs/Zed",
      "~/Library/Preferences/dev.zed.Zed.plist",
      "~/Library/Saved Application State/dev.zed.Zed.savedState",
    ]
  end
  on_linux do
    binary "zed.app/bin/zed"
    artifact "zed.app/share/applications/dev.zed.Zed.desktop",
             target: "~/.local/share/applications/dev.zed.Zed.desktop"

    preflight_steps do
      inreplace "zed.app/share/applications/dev.zed.Zed.desktop", "Exec=zed",
                "Exec={{HOMEBREW_PREFIX}}/bin/zed"
      inreplace "zed.app/share/applications/dev.zed.Zed.desktop", "Icon=zed",
                "Icon={{staged_path}}/zed.app/share/icons/hicolor/512x512/apps/zed.png"
    end

    zap trash: [
      "~/.cache/zed",
      "~/.config/zed",
      "~/.local/share/zed",
    ]
  end

  url "https://github.com/zed-industries/zed/releases/download/v#{version}/#{filename_start}-#{arch}.#{filename_ext}"
  name "Zed"
  desc "Multiplayer code editor"
  homepage "https://zed.dev/"

  livecheck do
    url "https://cloud.zed.dev/releases/stable/latest/asset?asset=zed&os=#{os}&arch=#{arch}"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  generate_completions_from_executable "#{HOMEBREW_PREFIX}/bin/zed", "--completions",
                                       shells: [:bash, :zsh, :fish, :pwsh]
end
