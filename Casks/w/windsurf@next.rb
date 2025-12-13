cask "windsurf@next" do
  arch arm: "arm64", intel: "x64"

  version "1.12.163+next.d0990613a6,d0990613a64d637c6ddbb36236b7662de941a6b7"
  sha256 arm:   "275b890da8705aeb0c8c4dc1fdf01f27aca18b4b8506d8e4f551c66f0c05c95c",
         intel: "914b1219781a318aa29c22d89938f167098be90d0f995850d1066a22ebf18284"

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
