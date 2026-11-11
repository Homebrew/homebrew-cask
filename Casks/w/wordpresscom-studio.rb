cask "wordpresscom-studio" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "silicon", intel: "intel"

  version "2.2.0,25905"
  sha256 arm:   "2b5e06b6812f370eec2daad23eb6ae28dba0ba77ef7724d19d5429126ee6a3b7",
         intel: "400547eb7ab1b81b9fb73db560b3c0eb72ab5179faa7e91ad0a9bf0db82ae2e3"

  url "https://appscdn.wordpress.com/downloads/wordpress-com-studio/mac-#{folder_arch}/v#{version.csv.first}/#{version.csv.second}/update/studio-#{arch}-v#{version.csv.first}.zip"
  name "WordPress Studio"
  desc "WordPress local development environment"
  homepage "https://wordpress.studio/"

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
  depends_on macos: :ventura

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
