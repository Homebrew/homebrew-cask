cask "vengi-voxedit" do
  version "0.0.28"
  sha256 "2e687fc4a63bf556e851cdafdae8f1aa7ada6137ec28d3166f83011907d4f457"

  url "https://github.com/vengi-voxel/vengi/releases/download/v#{version}/vengi-#{version}-Darwin.dmg",
      verified: "github.com/vengi-voxel/vengi/"
  name "vengi-voxedit"
  desc "Voxel editor"
  homepage "https://vengi-voxel.github.io/vengi/"

  app "vengi-voxedit.app"

  zap trash: [
    "~/Library/Application Support/vengi/voxedit",
  ]
end
