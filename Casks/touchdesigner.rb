cask "touchdesigner" do
  version "2021.15240"
  sha256 "00df10a1c34fea7e7c404ab5d40886a0d58e1f90d888accd8343c066e6ce2414"

  url "https://download.derivative.ca/TouchDesigner.#{version}.dmg"
  name "Derivative TouchDesigner"
  desc "Tool for creating dynamic digital art"
  homepage "https://www.derivative.ca/"

  livecheck do
    url "https://www.derivative.ca/download/"
    regex(%r{href=.*?/TouchDesigner[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "TouchDesigner.app"
end
