cask "wordpresscom-studio" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "silicon", intel: "intel"

  version "2.1.1,24953"
  sha256 arm:   "ecfbdac395a30147481f6f4ad8c032652a6f430d7bb3e983b661b234606b7421",
         intel: "d59e055349bfe6963d3eeb85fe4d69acb986ecd70d5f8f26aca608ea6e9959f0"

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
