cask "vitals" do
  version "0.8"
  sha256 "9929b499c052b23265b7db7599127141d66c54e12ef87043330e4b99445ea1f6"

  url "https://github.com/hmarr/vitals/releases/download/v#{version}/vitals-v#{version}.zip"
  name "Vitals"
  desc "Tiny process monitor"
  homepage "https://github.com/hmarr/vitals/"

  app "Vitals.app"

  zap trash: [
    "~/Library/Application Scripts/com.hmarr.Vitals-LaunchAtLoginHelper",
    "~/Library/Containers/com.hmarr.Vitals-LaunchAtLoginHelper",
  ]
end
