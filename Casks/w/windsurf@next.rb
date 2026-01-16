cask "windsurf@next" do
  arch arm: "arm64", intel: "x64"

  version "1.13.110+next.a473c86f69,a473c86f69ab6b6f98bc47437adc6263df8738d0"
  sha256 arm:   "a97fe384b77967f4b38f4818c90b4b119a97d5e3c5ec31e9fa59fba7d79e2d08",
         intel: "41d6b6ffe37c3fc5d92ce8e80830bdeec6d90d53d4a0e58d90db7fb0f10788e6"

  url "https://windsurf-stable.codeiumdata.com/darwin-#{arch}-dmg/next/#{version.csv.second}/Windsurf-darwin-#{arch}-#{version.csv.first}.dmg",
      verified: "windsurf-stable.codeiumdata.com/"
  name "Windsurf Next (Beta)"
  desc "Agentic IDE powered by AI Flow paradigm"
  homepage "https://codeium.com/windsurf/download-next"

  livecheck do
    url "https://windsurf-next.codeium.com/api/update/darwin-#{arch}-dmg/next/latest"
    strategy :json do |json|
      version = json["windsurfVersion"]
      hash = json["version"]
      next if version.blank? || hash.blank?

      "#{version},#{hash}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Windsurf - Next.app"
  binary "#{appdir}/Windsurf - Next.app/Contents/Resources/app/bin/windsurf-next"

  uninstall launchctl: "com.exafunction.windsurfNext.ShipIt",
            quit:      "com.exafunction.windsurfNext"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.exafunction.windsurfNext.sfl*",
    "~/Library/Application Support/Windsurf Next",
    "~/Library/Caches/com.exafunction.windsurfNext",
    "~/Library/Caches/com.exafunction.windsurfNext.ShipIt",
    "~/Library/HTTPStorages/com.exafunction.windsurfNext",
    "~/Library/Preferences/com.exafunction.windsurfNext.plist",
    "~/Library/Saved Application State/com.exafunction.windsurfNext.savedState",
  ]
end
