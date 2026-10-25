cask "zettlr" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "4.9.0"
  sha256 arm:          "dca807ccec54cc341df5fc495e9ce502d08b679a136118041efc8f1173de8c3c",
         intel:        "d0d8eae079c68f343401c50ce157c32960c0a4cdde28062fa34b1fa4ca6311ab",
         arm64_linux:  "1c2b6f9f9479e688c4ebed3bb62e47794c9c001b6d35388544dbfbd631e6a0e7",
         x86_64_linux: "d9639a6eef83475f2997716c15ceed5f1d47f7cca732465b52cf3ce507c06873"

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
  end

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.#{os}"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://www.zettlr.com/"
end
