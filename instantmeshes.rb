cask "instantmeshes" do
  version "1.0.0"
  sha256 :no_check

  url "https://instant-meshes.s3.eu-central-1.amazonaws.com/instant-meshes-macos.zip",
    verified: "instant-meshes.s3.eu-central-1.amazonaws.com"
  name "Instant Meshes"
  desc "Instant field-aligned meshes"
  homepage "https://github.com/wjakob/instant-meshes/"

  app "Instant Meshes.app"
end
