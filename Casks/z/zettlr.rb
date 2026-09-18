cask "zettlr" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "4.8.0"
  sha256 arm:          "3144b95199df77e3ca97a04546bf16a60f917107061331c31b3c35bc46b7d3f5",
         intel:        "6984a5c30bdb8825cb38e5223292aa53fed5febf029c3f9d15f86bec63f6aae5",
         arm64_linux:  "2de2f876fb6e882a7277d29d53a4df0a12fca1a621cd00cbd6f689cb2085fa7f",
         x86_64_linux: "0c80ac3a9e688ce99c2c9a05254daf32aaf9aaac4a40f2307e695ebe98d0bdfb"

  on_macos do
    depends_on macos: :monterey

    app "Zettlr.app"

    uninstall quit: "com.zettlr.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zettlr.app.sfl*",
      "~/Library/Application Support/zettlr",
      "~/Library/Logs/Zettlr",
      "~/Library/Preferences/com.zettlr.app.plist",
      "~/Library/Saved Application State/com.zettlr.app.savedState",
    ]
  end
  on_linux do
    app_image "Zettlr-#{version}-#{arch}.AppImage", target: "Zettlr.AppImage"
  end

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.#{os}"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://www.zettlr.com/"
end
