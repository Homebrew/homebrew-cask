cask "vellum" do
  version "2.8.9,28900"
  sha256 "a7459ccc25cbda4e540dc88c87cf134ff69c3a0436627ad3a81f9b294c8438b5"

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
