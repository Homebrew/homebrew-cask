cask "zed" do
  version "0.77.3,95639680"
  sha256 "7a10a5d6131fb8578908fb19d3a8c0dd0babecfeda81e57abc7c823ce57db7ae"

  url "https://zed.dev/api/releases/#{version.csv.second}/Zed.dmg" do |json|
    JSON.parse(json)["redirectURL"]
  end
  name "Zed"
  desc "Multiplayer code editor"
  homepage "https://zed.dev/"

  livecheck do
    url "https://zed.dev/_next/data/OOybEEg-80Z5ImnWgZJFJ/download.json"
    strategy :json do |json|
      v = json["pageProps"]["latestRelease"]["version"]
      id = json["pageProps"]["latestRelease"]["id"]
      next if v.blank? || id.blank?

      "#{v},#{id}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Zed.app"

  zap trash: [
    "~/.config/Zed",
    "~/Library/Application Support/Zed",
    "~/Library/Logs/Zed",
    "~/Library/Saved Application State/dev.zed.Zed.savedState",
  ]
end
