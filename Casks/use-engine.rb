cask "use-engine" do
  version "2.2.6.1"
  sha256 "165ac6af3ebcfbb78513390ccb4405e72b67962de0cc6a7bfc33a576ce4b144d"

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name "USE Engine"
  homepage "https://www.use-together.com/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "USE Engine.app"

  zap trash: "~/Library/Application Support/OPEXMedia/USE Engine"
end
