cask "windsurf@next" do
  arch arm: "arm64", intel: "x64"

  version "1.12.103+next.e440e8d968,e440e8d9688b140014ae4ca0477d73dbd4427164"
  sha256 arm:   "5119bd7642c8d3e0c88459e12c4a4935388a2bdcba5bc017c9d21f74d44b5af7",
         intel: "ddc2d7824fa15525dddca47d7cb4292e548ac292ac2f244308bfb5fdf8227848"

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
  depends_on macos: ">= :catalina"

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
