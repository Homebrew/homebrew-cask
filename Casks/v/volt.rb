cask "volt" do
  arch arm: "macos_arm64", intel: "macos"

  version "0.87"
  sha256 arm:   "ae933c40c77742317f44a62c273bb8de805c9b5bc627711ddf618217f171cf28",
         intel: "6ef5b811650bf28e2b5d8e0a57eaa843a8e3f3d235d72ca123d95ab035c5fe03"

  url "https://github.com/voltapp/volt/releases/download/#{version}/volt_#{arch}.zip",
      verified: "github.com/voltapp/volt/"
  name "Volt"
  desc "Client for Slack, Discord, Skype, Gmail, Twitter, Facebook, and more"
  homepage "https://volt-app.com/"

  app "Volt.app"

  zap trash: [
    "~/.volt",
    "~/Library/Caches/Volt",
    "~/Library/HTTPStorages/Volt.binarycookies",
    "~/Library/WebKit/Volt",
  ]
end
