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
    regex(%r{href=.*?/TeXworks-macos10.15-(\d+(?:\.\d+)*)-(\d+)-git_(.*?)\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  depends_on macos: ">= :catalina"

  app "TeXworks.app"
end
