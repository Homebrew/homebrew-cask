cask "vellum" do
  version "2.8"
  sha256 "c6a0c70ce55fccd47c961ab8458690e5354bba61f446250aa3b2f3565a7f53b8"

  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version.no_dots}000.zip",
      verified: "180g.s3.amazonaws.com/downloads/"
  appcast "https://get.180g.co/updates/vellum/"
  name "Vellum"
  desc "Ebook creation software"
  homepage "https://vellum.pub/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Vellum.app"

  zap trash: [
    "~/Library/Application Scripts/co.180g.Vellum",
    "~/Library/Containers/co.180g.Vellum",
  ]
end
