cask "wrike" do
  arch arm: "_ARM"

  version "4.6.3"
  sha256 arm:   "9db30c35e74a2b71fd752d9f2656afc2e41da06590b53d2fe0d419bf931676a6",
         intel: "e2537b95ae6a491e8f91a827bfcb6eed47657f2b4e8148f1fd4c7eb0c22e449b"

  url "https://dl.wrike.com/download/WrikeDesktopApp#{arch}.v#{version}.dmg"
  name "Wrike"
  desc "Project management app"
  homepage "https://www.wrike.com/apps/mobile-and-desktop/desktop-app/"

  livecheck do
    url "https://www.wrike.com/frontend/electron-app/changelog.json"
    regex(/^v?(\d+(?:\.\d+)+)(?:$|\s*\(for\s+Mac)/i)
    strategy :json do |json, regex|
      json.map do |item|
        match = item["version"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: :ventura

  app "Wrike for Mac.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wrike.wrike.sfl*",
    "~/Library/Application Support/Wrike",
    "~/Library/Logs/Wrike",
    "~/Library/Preferences/com.wrike.Wrike.plist",
    "~/Library/Saved Application State/com.wrike.Wrike.savedState",
  ]
end
