cask "use-engine" do
  version "2.2.6.3"
  sha256 "f4eddd7d18e3020ec3655f5cd972a3082b8e26529b7974233c5e5903a8e160aa"

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name "USE Engine"
  homepage "https://www.use-together.com/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "USE Engine.app"

  zap trash: "~/Library/Application Support/OPEXMedia/USE Engine"
end
