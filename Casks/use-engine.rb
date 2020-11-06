cask "use-engine" do
  version "2.2.5.5"
  sha256 "1f10b0e793099c8e55b88927bf31bf8b97997174249fda001c0bc834fc3d1d89"

  url "https://repository.use-together.com/stable/use-engine/macos/#{version.major}.x/#{version}/use-engine.dmg"
  name "USE Engine"
  homepage "https://www.use-together.com/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "USE Engine.app"

  zap trash: "~/Library/Application Support/OPEXMedia/USE Engine"
end
