cask "windsurf@next" do
  arch arm: "arm64", intel: "x64"

  version "1.10.105+next.c1afeb8ae2,c1afeb8ae2b17dbdda415f9aa5dec23422c1fe47"
  sha256 arm:   "8f3f82db3fac1f6062b27e810fdebbf8d9e005aa25151c88051ec0bf6b4e2f1b",
         intel: "9600e0b484b0769ea530f6eab10a816e1deebda51751fa1db3ed18cd7a28a074"

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
