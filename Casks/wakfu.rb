cask "wakfu" do
  version :latest
  sha256 :no_check

  language "en", default: true do
    url "https://download.wakfu.com/full/zip/"
  end

  name "Wakfu"
  desc "Wakfu is a massively multiplayer online role-playing video game"
  homepage "https://www.wakfu.com/"

  depends_on macos: ">= :catalina"

  app "Wakfu.app"
end