cask "voxql" do
  version "0.1.0"
  sha256 "d827f01af571e5924974736dc7b9e3ee07f7304442a4cf57fa06e42284dab2ad"

  url "https://github.com/heptal/VoxQL/releases/download/#{version}/VoxQL.qlgenerator.zip"
  name "voxql"
  desc "Quick Look generator for MagicaVoxel files"
  homepage "https://github.com/heptal/VoxQL"

  qlplugin "VoxQL.qlgenerator"

  # No zap stanza required
end
