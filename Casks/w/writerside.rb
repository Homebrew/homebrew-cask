cask "writerside" do
  arch arm: "-aarch64"

  version "2024.1,241.18775.98"
  sha256 arm:   "956fc3d39a2aa34648c272780843729356a20c0a4a1ceb20e69a9f86a562278c",
         intel: "0e97d9a2ef53f18930b63a48d7303783aca7422c5d6818543f4805c01991ba41"

  url "https://download.jetbrains.com/writerside/writerside-#{version.csv.second}#{arch}.dmg"
  name "Writerside"
  desc "Technical writing environment"
  homepage "https://www.jetbrains.com/writerside/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=WRS&latest=true&type=eap"
    strategy :json do |json|
      json["WRS"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Writerside #{version.before_comma} EAP.app", target: "Writerside.app"
  binary "#{appdir}/Writerside.app/Contents/MacOS/writerside"

  zap trash: [
    "~/Library/Application Support/JetBrains/Writerside#{version.major_minor}",
    "~/Library/Caches/JetBrains/Writerside#{version.major_minor}",
    "~/Library/Logs/JetBrains/Writerside#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.writerside-EAP.plist",
    "~/Library/Saved Application State/com.jetbrains.writerside-EAP.SavedState",
  ]
end
