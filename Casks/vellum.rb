cask "vellum" do
  version "3.0.2,30200"
  sha256 "6c3ee0eba7a03b2ba4f7fdac7eff2360a84aa35823b60798fa4820a023409623"

  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version.csv.second}.zip",
      verified: "180g.s3.amazonaws.com/downloads/"
  name "Vellum"
  desc "Ebook creation software"
  homepage "https://vellum.pub/"

  livecheck do
    url "https://get.180g.co/updates/vellum/"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Vellum.app"

  zap trash: [
    "~/Library/Application Scripts/co.180g.Vellum",
    "~/Library/Containers/co.180g.Vellum",
  ]
end
