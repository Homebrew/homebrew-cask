cask "zettlr" do
  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  version "4.6.0"
  sha256 arm:          "c0ff76d9e869eee312d7c131764fe73322344f85127ed2e5fada1076cb88cf32",
         intel:        "051a6d34f3df17b7ec02d4b5bc3ea341d6885ee643646657518853f2ed18f730",
         x86_64_linux: "0c7eea7263758794e48785cb0660af1d97f531447cb5ac31733864832b6f14e0",
         arm64_linux:  "45e558ad0b1da0fb2f223258a8a22c94669625afa081773b8094d72c1a83a64b"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}#{url_end}",
      verified: "github.com/Zettlr/Zettlr/"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://www.zettlr.com/"

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
end
