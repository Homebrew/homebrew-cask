cask "twist" do
  version "1.0.1"
  sha256 "f46b323c666cd3377bc881197f1fcb9ae2a656f7645551df8c673d4b25b27b4f"

  url "https://downloads.twist.com/mac/Twist-#{version}.dmg"
  name "Twist"
  desc "Team communication and collaboration software"
  homepage "https://twist.com/"

  livecheck do
    url "https://twist.com/mac_app"
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  app "Twist.app"
end
