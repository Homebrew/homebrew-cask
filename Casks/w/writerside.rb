cask "writerside" do
  arch arm: "-aarch64"

  version "2024.3,243.22562.371"
  sha256 arm:   "9d86ef50b4c6d2a07d236219e9b05c0557241fb017d52ac395719bdb425130f5",
         intel: "0c78b8035497c855aea5666256716778abd46dadf68f51e4f91c0db01f62b280"

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
  depends_on macos: ">= :high_sierra"

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
