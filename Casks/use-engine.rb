cask "use-engine" do
  version "2.2.5.3"
  sha256 "3a567e8b8932d51277cdd0cc25fa60a9e096e69a3ce51331416bae4a56a43f8d"

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name "USE Engine"
  homepage "https://www.use-together.com/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "USE Engine.app"

  zap trash: "~/Library/Application Support/OPEXMedia/USE Engine"
end
