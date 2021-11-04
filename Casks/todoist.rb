cask "todoist" do
  version "8.0.1"
  sha256 "1cd6db17e5610f1af5de2898e56a47733141b553838cd1ed6f9acbd59668bca8"

  url "https://electron-dl.todoist.com/mac/Todoist-#{version}.dmg"
  name "Todoist"
  desc "To-do list"
  homepage "https://todoist.com/home"

  livecheck do
    url "https://electron-dl.todoist.com/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "Todoist.app"

  zap trash: [
    "~/Library/Application Scripts/S3DD273774.com.todoist.mac-beta.Todoist.extensions",
    "~/Library/Application Scripts/S3DD273774.com.todoist.mac-dev.Todoist.extensions",
    "~/Library/Application Scripts/S3DD273774.com.todoist.mac.Todoist",
    "~/Library/Application Scripts/S3DD273774.com.todoist.mac.Todoist.extensions",
    "~/Library/Application Scripts/com.todoist.mac.Todoist",
    "~/Library/Application Scripts/com.todoist.mac.Todoist.TodoistSafari",
    "~/Library/Application Scripts/com.todoist.mac.Todoist.TodoistShare",
    "~/Library/Application Scripts/com.todoist.mac.Todoist.TodoistToday",
    "~/Library/Application Support/Todoist",
    "~/Library/Containers/com.todoist.mac.Todoist",
    "~/Library/Containers/com.todoist.mac.Todoist.TodoistSafari",
    "~/Library/Containers/com.todoist.mac.Todoist.TodoistShare",
    "~/Library/Containers/com.todoist.mac.Todoist.TodoistToday",
    "~/Library/Group Containers/S3DD273774.com.todoist.mac-beta.Todoist.extensions",
    "~/Library/Group Containers/S3DD273774.com.todoist.mac-dev.Todoist.extensions",
    "~/Library/Group Containers/S3DD273774.com.todoist.mac.Todoist",
    "~/Library/Group Containers/S3DD273774.com.todoist.mac.Todoist.extensions",
    "~/Library/Logs/Todoist",
    "~/Library/Preferences/com.todoist.mac.Todoist.plist",
    "~/Library/Saved Application State/com.todoist.mac.Todoist.savedState",
  ]
end
