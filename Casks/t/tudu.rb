cask "tudu" do
  version "1.0.3"
  sha256 "5773fce9d5058ce64f870782b9fb2fba2d496a57d255b75171d54fa61e9bc851"

  url "https://github.com/AslamSDM/tudu/releases/download/v#{version}/Tudu-#{version}.zip"
  name "Tudu"
  desc "Beautiful todo app with widget support"
  homepage "https://github.com/AslamSDM/tudu"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tudu.app"

  zap trash: [
    "~/Library/Application Support/Tudu",
    "~/Library/Caches/com.Tudu",
    "~/Library/Preferences/com.Tudu.plist",
  ]
end
