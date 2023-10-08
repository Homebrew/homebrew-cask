cask "xaos" do
  version "4.3.1"
  sha256 "e006fc69772b1944dcc87bfbb9abfcfc94af08ccfca1a85d8d1aeddfd9e7d248"

  url "https://github.com/xaos-project/XaoS/releases/download/release-#{version}/XaoS-#{version}.dmg",
      verified: "github.com/xaos-project/XaoS/"
  name "GNU XaoS"
  desc "Real-time interactive fractal zoomer"
  homepage "https://xaos-project.github.io/"

  livecheck do
    url :url
    regex(/^release[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "XaoS.app"
end
