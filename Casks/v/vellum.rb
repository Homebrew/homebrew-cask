cask "vellum" do
  version "4.1.1,41100"
  sha256 "a716f17f5567a6e180fe1822b66bfe12c67f1d591e25b86f2aa892bbb462d1e6"

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
  depends_on macos: ">= :ventura"

  app "Vellum.app"

  zap trash: [
    "~/Library/Application Scripts/co.180g.Vellum",
    "~/Library/Containers/co.180g.Vellum",
  ]
end
