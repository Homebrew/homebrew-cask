cask "vellum" do
  version "2.8.5,28500"
  sha256 "dfe6935cae86043876a9288e645779bcff94d7b06a7f4c039f3d9c80e757fd89"

  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version.after_comma}.zip",
      verified: "180g.s3.amazonaws.com/downloads/"
  name "Vellum"
  desc "Ebook creation software"
  homepage "https://vellum.pub/"

  livecheck do
    url "https://get.180g.co/updates/vellum/"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Vellum.app"

  zap trash: [
    "~/Library/Application Scripts/co.180g.Vellum",
    "~/Library/Containers/co.180g.Vellum",
  ]
end
