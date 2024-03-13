cask "writerside" do
  arch arm: "-aarch64"

  version "2023.3,233.14938"
  sha256 arm:   "2a78fbcabcdd5b7c906d933dd91ac927bde22ae3bba988dad7450184fd90457a",
         intel: "53c7ad5a8808776b60eb82b3155c6f3a2a0dfad43ba8d9238a0db1752d503b09"

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
