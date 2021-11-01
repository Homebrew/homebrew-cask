cask "taskade" do
  version "4.0.0"
  sha256 "749dbb7e06a7b9796b33c709b534d79a89e12458d010865739fb0ad36aed2835"

  url "https://apps.taskade.com/updates/Taskade-#{version}-universal.dmg"
  name "Taskade"
  desc "Task manager for teams"
  homepage "https://www.taskade.com/"

  livecheck do
    url "https://www.taskade.com/downloads"
    regex(%r{href=.*?/Taskade[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg}i)
  end

  depends_on macos: ">= :yosemite"

  app "Taskade.app"
end
