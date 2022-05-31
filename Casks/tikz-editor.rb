cask "tikz-editor" do
  version "1.0"
  sha256 "0462af2994a5d2c3f495eb922e3cf989e3f4cff27bc545426ddc83da4a5f82db"

  url "https://github.com/downloads/fredokun/TikZ-Editor/TikZ%20Editor-#{version}.dmg"
  name "TikZ Editor"
  desc "Editor for the LaTeX graphic package TikZ"
  homepage "https://github.com/fredokun/TikZ-Editor"

  livecheck do
    url :homepage
    regex(/href=.*?TikZ%20Editor[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match
  end

  app "TikZ Editor.app"
end
