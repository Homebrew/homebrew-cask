cask "use-engine" do
  version "2.2.5.4"
  sha256 "f66b1a6ca65a0cfb3f5a85902651b6311d9cb274763dac3ac82c7f7bb0ca4253"

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name "USE Engine"
  homepage "https://www.use-together.com/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "USE Engine.app"

  zap trash: "~/Library/Application Support/OPEXMedia/USE Engine"
end
