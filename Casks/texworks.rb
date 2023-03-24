cask "texworks" do
  version "0.6.8,202302181247,6b1c6ab"
  sha256 "9c7585bb2dc3ecf7f190d1af09d063801f912d7be8825e503bd11d69f2f3081e"

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

  zap trash: "~/Library/Preferences/org.tug.TeXworks.plist"
end
