cask "voxql" do
  version "0.1.0"
  sha256 "d827f01af571e5924974736dc7b9e3ee07f7304442a4cf57fa06e42284dab2ad"

  url "https://github.com/heptal/VoxQL/releases/download/#{version}/VoxQL.qlgenerator.zip"
  name "VoxQL"
  desc "Quick Look generator for MagicaVoxel files"
  homepage "https://github.com/heptal/VoxQL"

  deprecate! date: "2025-09-22", because: :no_longer_meets_criteria

  qlplugin "VoxQL.qlgenerator"

  # No zap stanza required
end
