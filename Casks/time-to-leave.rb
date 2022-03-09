cask "time-to-leave" do
  version "2.0.1"
  sha256 "645026480b04cec15dce96b0dbd361565f6647fcb9ab79df457ea5f1fa75f02f"

  url "https://github.com/thamara/time-to-leave/releases/download/v#{version}/time-to-leave.dmg"
  name "Time To Leave"
  desc "Log work hours and get notified when it's time to leave the office"
  homepage "https://github.com/thamara/time-to-leave"

  # A tag using the stable version format is sometimes marked as "Pre-release"
  # on the GitHub releases page, so we have to use the `GithubLatest` strategy.
  livecheck do
    url :url
    regex(%r{href=["']?[^"' >]*?/tag/\D*([^"' >]+?)["' >]}i)
    strategy :github_latest
  end

  app "Time To Leave.app"
end
