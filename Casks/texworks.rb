cask "texworks" do
  version "0.6.7,202202261118,23c4c74"
  sha256 "b802c24a4a3435f704ffcca58b89df175d0fa90e4fea62be2731a489dcf32649"

  url "https://github.com/TeXworks/texworks/releases/download/release-#{version.csv.first}/TeXworks-macos10.15-#{version.csv.first}-#{version.csv.second}-git_#{version.csv.third}.dmg",
      verified: "github.com/TeXworks/texworks/"
  name "TeXworks"
  desc "Main codebase"
  homepage "https://www.tug.org/texworks/"

  livecheck do
    url "https://github.com/TeXworks/texworks/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/TeXworks-macos10.15-(\d+(?:\.\d+)*)-(\d+)-git_(.*?)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  depends_on macos: ">= :catalina"

  app "TeXworks.app"
end
