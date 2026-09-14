cask "vellum" do
  version "4.1.5,41500"
  sha256 "d46559e60994d63b8ed282089a881e12106f6de255c3990a7655cd43789fd166"

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
