cask "youtube-music" do
  version "1.20.0"
  sha256 "b776009ddc9138e25cda177e992044ce716e362e0ad1739a5f1f7c388c51fa46"

  url "https://github.com/th-ch/youtube-music/releases/download/v#{version}/YouTube-Music-#{version}.dmg",
      verified: "github.com/th-ch/youtube-music/"
  name "YouTube Music"
  desc "Desktop App bundled with custom plugins (and built-in ad blocker / downloader)"
  homepage "https://th-ch.github.io/youtube-music/"

  livecheck do
    url "https://github.com/th-ch/youtube-music/releases/latest"
    regex(%r{href=.*?/YouTube-Music-(\d+(?:\.\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| match[0] }
    end
  end

  auto_updates true

  app "YouTube Music.app"

  zap trash: [
    "~/Library/Application Support/YouTube Music",
    "~/Library/Preferences/com.github.th-ch.youtube-music.plist",
    "~/Library/Saved Application State/com.github.th-ch.youtube-music.savecState",
  ]
end
