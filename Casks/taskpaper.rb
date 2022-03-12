cask "taskpaper" do
  version "3.8.16,475"
  sha256 "96c1efa86db091bbade3e9ef544254a347fdc6a0906cee086fbc27380ff4e2f0"

  url "https://www.taskpaper.com/assets/app/TaskPaper-#{version.csv.first}.dmg"
  name "TaskPaper"
  desc "App to make lists and help with organization"
  homepage "https://www.taskpaper.com/"

  livecheck do
    url "https://www.taskpaper.com/assets/app/TaskPaper.rss"
    strategy :sparkle
  end

  auto_updates true

  app "TaskPaper.app"
end
