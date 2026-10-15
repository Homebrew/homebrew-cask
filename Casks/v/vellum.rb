cask "vellum" do
  version "4.1.7,41700"
  sha256 "47570849e5cf82e1e3c04e60346165ee53f6116bf7ac30dc6626af8756156652"

  url "https://180g.s3.amazonaws.com/downloads/Vellum-#{version.csv.second}.zip"
  name "Vellum"
  desc "Ebook creation software"
  homepage "https://vellum.pub/"

  livecheck do
    url "https://get.180g.co/updates/vellum/"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Vellum.app"

  zap trash: [
    "~/Library/Application Scripts/co.180g.Vellum",
    "~/Library/Containers/co.180g.Vellum",
  ]
end
