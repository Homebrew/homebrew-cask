cask "writerside" do
  arch arm: "-aarch64"

  version "2024.2,242.21870.138"
  sha256 arm:   "cb815cfe2fa9fd69675a31cb870ccf5037ac429a954cb950141074668f250014",
         intel: "bcf989440a220fff70600d38333bc99feef0453779e60caae0d05d1168cfffb0"

  url "https://download.jetbrains.com/writerside/writerside-#{version.csv.second}#{arch}.dmg"
  name "Writerside"
  desc "Technical writing environment"
  homepage "https://www.jetbrains.com/writerside/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=WRS&latest=true&type=eap"
    strategy :json do |json|
      json["WRS"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
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
