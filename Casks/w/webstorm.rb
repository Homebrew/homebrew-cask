cask "webstorm" do
  arch arm: "-aarch64"

  version "2024.2.0.1,242.20224.426"
  sha256 arm:   "6d7a12184f46f3693b9f33ececeed0dde272fdd5ba8e06107869ae1731b694ff",
         intel: "2533f260a7ac04ffc4e0711a21e6cdb2819ab2e1e99f3d02ce447efd3c4dc5b6"

  url "https://download.jetbrains.com/webstorm/WebStorm-#{version.csv.first}#{arch}.dmg"
  name "WebStorm"
  desc "JavaScript IDE"
  homepage "https://www.jetbrains.com/webstorm/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release"
    strategy :json do |json|
      json["WS"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "WebStorm.app"
  binary "#{appdir}/WebStorm.app/Contents/MacOS/webstorm"

  zap trash: [
    "~/Library/Application Support/JetBrains/WebStorm#{version.major_minor}",
    "~/Library/Caches/com.apple.nsurlsessiond/Downloads/com.jetbrains.WebStorm",
    "~/Library/Caches/JetBrains/WebStorm#{version.major_minor}",
    "~/Library/Logs/JetBrains/WebStorm#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.WebStorm.plist",
    "~/Library/Preferences/jetbrains.webstorm.*.plist",
    "~/Library/Preferences/WebStorm#{version.major_minor}",
    "~/Library/Preferences/webstorm.plist",
    "~/Library/Saved Application State/com.jetbrains.WebStorm.savedState",
  ]
end
