cask "turtl" do
  version "0.7.2.6-sqlite-fix"
  sha256 "90085ffb3b97a3c5e6d01313fda6df4f74c7fe1b61b7c1388e54554db79c9a1a"

  url "https://github.com/turtl/desktop/releases/download/v#{version}/turtl-osx.zip",
      verified: "github.com/turtl/desktop/"
  name "turtl"
  desc "Secure collaborative notebook"
  homepage "https://turtlapp.com/"

  # A tag using the stable version format is sometimes marked as "Pre-release"
  # on the GitHub releases page, so we have to check releases instead of tags.
  # Versions with suffixes like `0.7.2.6-sqlite-fix` are also a problem when
  # using the `Git` strategy, as the suffix is compared alphabetically (so a
  # newer version may wrongly appear to be older). Newer releases may not
  # provide a macOS asset, so this uses the `GithubReleases` strategy until
  # upstream consistently provides macOS files. The regex is currently very
  # loose and ambiguous because it's not clear what the file name format will
  # be going forward (after several years without a new version) but we should
  # tighten it up if/when the format becomes more clear in the future.
  livecheck do
    url :url
    regex(%r{
      /v?(\d+(?:\.\d+)+[^/]*)/
      turtl(?:[._-]v?(\d+(?:\.\d+)+.*?))?
      (?:[._-](?:mac(?:os)?|osx)\.zip|.*?\.(?:dmg|pkg))
    }ix)
    strategy :github_releases do |json, regex|
      version = nil
      json.each do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.each do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          version = if match[2] && match[1] != match[2]
            "#{match[2]},#{match[1]}"
          else
            match[1]
          end
          break
        end
        break if version
      end

      version
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Turtl.app"

  zap trash: [
    "~/Library/Application Support/Turtl",
    "~/Library/Logs/Turtl",
    "~/Library/Preferemces/com.electron.turtl.helper.plist",
    "~/Library/Preferences/com.electron.turtl.plist",
    "~/Library/Saved Application State/com.electron.turtl.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
