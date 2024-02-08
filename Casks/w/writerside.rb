cask "writerside" do
  arch arm: "-aarch64"

  version "2023.3,233.14389"
  sha256 arm:   "c32976ad97d3ee2f9a3914b93ddeb6a3a8481d28620edea4081005150ffddc97",
         intel: "33b677f0c4214b69b77288e6c8e4a951b3d9b1240d057d22634fbba0b8259a07"

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
