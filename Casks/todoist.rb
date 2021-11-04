cask "todoist" do
  version "8.0.1"
  sha256 "1cd6db17e5610f1af5de2898e56a47733141b553838cd1ed6f9acbd59668bca8"

  url "https://electron-dl.todoist.com/mac/Todoist-#{version}.dmg"
  name "Todoist"
  desc "To-do list"
  homepage "https://todoist.com/home"

  app "Todoist.app"
end
