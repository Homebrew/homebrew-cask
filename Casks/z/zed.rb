cask "zed" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  filename_start = on_system_conditional macos: "Zed", linux: "zed-linux"
  filename_ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "1.29.1"
  sha256 arm:          "860c60861efbe5bac3552c2ecc518bc9664db08844b6e656e0ced4fb6711dff8",
         intel:        "0bba5a103e091144fd1d4f5833b512defb12fcb734ccef92c127fc6b7a325c4f",
         arm64_linux:  "66a735ae9041f7c8290530cc63a178939a9e682a6962935c0f8ce261a003e5df",
         x86_64_linux: "a395b24384c2879454c2885215529c7cbc668cc66fb78e95e7de685caaf3235e"

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
