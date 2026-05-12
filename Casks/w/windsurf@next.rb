cask "windsurf@next" do
  arch arm: "arm64", intel: "x64"

  version "2.2.1017+next.a65d6c4e1f,a65d6c4e1fd335336d7a0b601099811667e184ca"
  sha256 arm:   "3d49713af48d8ae6ade39b7034124f39a174af6a2441e4d36344cb8c899fcb8e",
         intel: "74b58f27d16a10aaa3d7f753372c0df8eb524b64030ca8c65e9da61e52bfbcd0"

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
  depends_on macos: :monterey

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
