cask "zettlr" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "4.7.0"
  sha256 arm:          "e03e3701557707f6fa50520f4c03f8345cd65206d2810bf5ae433ef40a7ed8f8",
         intel:        "9bb4300edafb239bf4c1e383637bfd803012e96b83eccfb59d3418c7f3ffc1a7",
         arm64_linux:  "d4aa0b1536f06eba24f2b8b0c4e6aa651068b46f367de407bce65f8dd058e3cf",
         x86_64_linux: "9758e9659eaf02599396ed26d74eb069e55068cd6665be700b54dcbf6212d047"

  on_macos do
    depends_on macos: :monterey

    app "Zettlr.app"

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
