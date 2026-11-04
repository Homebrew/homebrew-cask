cask "vellum" do
  version "4.2,42004"
  sha256 "77fa5fab78cf32183278b3613f90565a71fe9e01f0d08e4c119140c5fccbd149"

  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version.csv.second}.zip"
  name "Vellum"
  desc "Ebook creation software"
  homepage "https://vellum.pub/"

  livecheck do
    url "https://get.180g.co/updates/vellum/"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Vellum.app"

  zap trash: [
    "~/Library/Application Scripts/co.180g.Vellum",
    "~/Library/Containers/co.180g.Vellum",
  ]
end
