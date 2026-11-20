cask "zed" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  filename_start = on_system_conditional macos: "Zed", linux: "zed-linux"
  filename_ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "1.29.3"
  sha256 arm:          "b692c9effdfcec874c47f56c3b27df069a63c6b3d23ecd070ffec9238a708bb8",
         intel:        "b4779577003b79cb05ab6be18205babdebf81b45d96acdf21fce43dd4a6d6083",
         arm64_linux:  "5f1de233ac02d8c9eff68e9ab4207274df3ddbd2cf9fa6f8a80ef5487f03e8ee",
         x86_64_linux: "44b0f350aa7bf4551d1b0aaa2d3b673a6de2c03bc5e979b3592fd2180b4f77c1"

  on_macos do
    depends_on macos: :monterey

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
