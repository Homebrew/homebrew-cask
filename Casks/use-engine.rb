cask "use-engine" do
  version "2.2.6.2"
  sha256 "d6056c4a0e539b825e366a783f5b319f6532ffd996f84fd094c666af15953816"

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name "USE Engine"
  homepage "https://www.use-together.com/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "USE Engine.app"

  zap trash: "~/Library/Application Support/OPEXMedia/USE Engine"
end
