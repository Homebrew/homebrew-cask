cask "zettlr" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "4.11.0"
  sha256 arm:          "68e57c3dcb8275b175ac1b67f7d94945c84e0a7c4da6e1ab6b6e8fcd64458793",
         intel:        "bb805e85a2459cb0f32a69590251c3f3ce3feec1d155959a11673d1201e0724d",
         arm64_linux:  "fb4153b95f15d4800824823c50597e9971fea7ae3cb0a9a3747c6cd832571d1c",
         x86_64_linux: "e9b5406d62e2c9e5fef3adb092877669d849d16a217375c4e1736cf9c7aa9bd7"

  on_macos do
    depends_on macos: :ventura

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

    zap trash: "~/.config/Zettlr"
  end

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.#{os}"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://www.zettlr.com/"
end
