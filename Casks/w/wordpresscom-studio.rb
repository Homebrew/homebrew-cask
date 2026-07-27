cask "wordpresscom-studio" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "silicon", intel: "intel"

  version "1.17.0,19986"
  sha256 arm:   "9ec23f9726a4444dbd1ced0a8e992fb099e73d43d719afe7bf0a38bcabfe9bc2",
         intel: "a8b6af78f10ba42a8c469a3aaeb81e42f352638f20abbe6d01c04e6f668bc94b"

  url "https://appscdn.wordpress.com/downloads/wordpress-com-studio/mac-#{folder_arch}/v#{version.csv.first}/#{version.csv.second}/update/studio-#{arch}-v#{version.csv.first}.zip"
  name "Wordpress Studio"
  desc "WordPress local development environment"
  homepage "https://developer.wordpress.com/studio/"

  livecheck do
    url "https://public-api.wordpress.com/wpcom/v2/studio-app/updates?platform=darwin&arch=#{arch}&version=0.0.0"
    regex(%r{/(\d+(?:\.\d+)*)/update/studio(?:[._-]darwin)?[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)(?:\.app)?\.zip}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next unless match

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Studio.app"

  uninstall quit: "com.electron.studio"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.studio.sfl*",
    "~/Library/Application Support/Studio",
    "~/Library/Caches/com.electron.studio*",
    "~/Library/HTTPStorages/com.electron.studio",
    "~/Library/Logs/Studio",
    "~/Library/Preferences/com.electron.studio.plist",
    "~/Library/Saved Application State/com.electron.studio.savedState",
  ]
end
