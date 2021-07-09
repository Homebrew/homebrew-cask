cask "vellum" do
  version "2.8.6,28600"
  sha256 "92f9c4df332cfa6a6e21ea922d7d3062547de77783497b092184fb062f37c7df"

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
