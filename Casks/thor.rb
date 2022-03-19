cask "thor" do
  version "1.5.10"
  sha256 "47f4ba1a9ba84853e599ddbba2da17f64c01f311e0196f7adf746f0b93d565c6"

  url "https://github.com/gbammc/Thor/releases/download/#{version}/Thor_#{version}.zip"
  name "Thor"
  desc "Utility to switch between applications"
  homepage "https://github.com/gbammc/Thor/"

  auto_updates true

  app "Thor.app"

  uninstall quit: "me.alvinzhu.Thor"

  zap trash: [
    "~/Library/Application Scripts/me.alvinzhu.Thor",
    "~/Library/Containers/me.alvinzhu.Thor",
  ]
end
