cask "zettlr" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "4.10.0"
  sha256 arm:          "e20016dfa854be12f9559f10900e0a2f1e12aa0d9dac60a1ef3ab42e56d04abc",
         intel:        "df84b4ed3a732c94759be83f0b19fbd757584d753503512d06dd8503ef64b165",
         arm64_linux:  "2d4fba880b24d72afffa93ebe2c8ff6f420d598258d66189611054d423d40a7c",
         x86_64_linux: "bf6f7458c2377818d5d4ed008a721c295bec2c25d570cf8f54d053f8819508fc"

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
