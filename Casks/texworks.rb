cask "texworks" do
  version "0.6.6,202103111124:24442ac"
  sha256 "9517f6bd8f3a34264bc9e5c6ae59969a81bcfdafda2c830d58d2d0d652cffe57"

  url "https://github.com/TeXworks/texworks/releases/download/release-#{version.before_comma}/TeXworks-macos-#{version.before_comma}-#{version.after_comma.before_colon}-git_#{version.after_colon}.dmg",
      verified: "github.com/TeXworks/texworks/"
  name "TeXworks"
  desc "Main codebase"
  homepage "https://www.tug.org/texworks/"

  livecheck do
    url "https://github.com/TeXworks/texworks/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/TeXworks-macos-(\d+(?:\.\d+)*)-(\d+)-git_(.*?)\.dmg}i)
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "TeXworks.app"
end
