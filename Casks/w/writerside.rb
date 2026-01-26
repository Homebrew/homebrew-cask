cask "writerside" do
  arch arm: "-aarch64"

  version "2024.3,243.22562.371"
  sha256 arm:   "9d86ef50b4c6d2a07d236219e9b05c0557241fb017d52ac395719bdb425130f5",
         intel: "0c78b8035497c855aea5666256716778abd46dadf68f51e4f91c0db01f62b280"

  url "https://download.jetbrains.com/writerside/writerside-#{version.csv.second}#{arch}.dmg"
  name "Writerside"
  desc "Technical writing environment"
  homepage "https://www.jetbrains.com/writerside/"

  # https://blog.jetbrains.com/writerside/2025/03/sunsetting-writerside-ide/
  deprecate! date: "2025-08-16", because: :discontinued

  auto_updates true

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
