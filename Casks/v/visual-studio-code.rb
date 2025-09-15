module Utils
  define_singleton_method(:os_arch_combo) do |os, arch|
    return "#{os}-#{arch}" if os == "linux"
    return "#{os}-#{arch}" if os == "darwin" && arch == "arm64"

    os.to_s
  end

  define_singleton_method(:binary_path) do |appdir, os, arch, version|
    return "/home/linuxbrew/.linuxbrew/Caskroom/visual-studio-code/#{version}/VSCode-linux-#{arch}/bin" if os == "linux"

    "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin"
  end
end

cask "visual-studio-code" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_catalina :or_older do
    version "1.97.2"
    sha256 arm:   "567ba4fae5545586a0bff02eea263d59873fcf488368a9a9ccf3d4c22dfa8ebc",
           intel: "cfe48cf7bce34830cb7a20ee7b5e8fbe575fe95a47ef49f62dce8ccf3087dd89"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "1.104.0"
    sha256 arm:   "c5af8247883f09a0cb2edb28a18f9f55c4ec3ed3bf7dc168e03600605095aef6",
           intel: "79531e3edb4c1bdcff829bc7ecfada215eee34bee6bc110fcdbfb68a57926974"

    livecheck do
      url "https://update.code.visualstudio.com/api/update/#{Utils.os_arch_combo(os, arch)}/stable/latest"
      strategy :json do |json|
        json["productVersion"]
      end
    end
  end

  on_linux do
    version "1.104.0"
    sha256 arm64_linux:  "92d29b2206c5d5e979c4707e012dee3f7a37e47d9d221509e0d1cd0a8421237b",
           x86_64_linux: "0019db2e217c00a0a5b068e11dbff22b88c3dd3b7ccbf35d6f189c4a4a7e1dbb"

    livecheck do
      url "https://update.code.visualstudio.com/api/update/#{Utils.os_arch_combo(os, arch)}/stable/latest"
      strategy :json do |json|
        json["productVersion"]
      end
    end
  end

  url "https://update.code.visualstudio.com/#{version}/#{Utils.os_arch_combo(os, arch)}/stable"
  name "Microsoft Visual Studio Code"
  name "VS Code"
  desc "Open-source code editor"
  homepage "https://code.visualstudio.com/"

  auto_updates true

  app "Visual Studio Code.app" if os == "darwin"
  binary "#{Utils.binary_path(appdir, os, arch, version)}/code"
  binary "#{Utils.binary_path(appdir, os, arch, version)}/code-tunnel"

  if os == "linux"
    zap trash: [
      "~/.config/Code",
      "~/.vscode",
    ]
  end

  if os == "darwin"
    depends_on macos: ">= :catalina"

    uninstall launchctl: "com.microsoft.VSCode.ShipIt",
              quit:      "com.microsoft.VSCode"

    zap trash: [
      "~/.vscode",
      "~/Library/Application Support/Code",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscode.sfl*",
      "~/Library/Caches/com.microsoft.VSCode",
      "~/Library/Caches/com.microsoft.VSCode.ShipIt",
      "~/Library/HTTPStorages/com.microsoft.VSCode",
      "~/Library/Preferences/ByHost/com.microsoft.VSCode.ShipIt.*.plist",
      "~/Library/Preferences/com.microsoft.VSCode.helper.plist",
      "~/Library/Preferences/com.microsoft.VSCode.plist",
      "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
    ]
  end
end
