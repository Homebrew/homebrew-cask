cask "volt" do
  version "0.87"

  if Hardware::CPU.intel?
    sha256 "6ef5b811650bf28e2b5d8e0a57eaa843a8e3f3d235d72ca123d95ab035c5fe03"

    url "https://github.com/voltapp/volt/releases/download/#{version}/volt_macos.zip",
        verified: "github.com/voltapp/volt/"
  else
    sha256 "ae933c40c77742317f44a62c273bb8de805c9b5bc627711ddf618217f171cf28"

    url "https://github.com/voltapp/volt/releases/download/#{version}/volt_macos_arm64.zip",
        verified: "github.com/voltapp/volt/"
  end

  name "Volt"
  desc "Client for Slack, Discord, Skype, Gmail, Twitter, Facebook, and more"
  homepage "https://volt-app.com/"

  app "Volt.app"
end
