cask "twist" do
  version "0.3.1"
  sha256 "ef41d0a81f2966ed136894ca12db26c1fee701ef27a76bd6a9a001b5678683c8"

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
