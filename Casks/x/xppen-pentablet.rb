cask "xppen-pentablet" do
  version "4.0.10,250829,2025,09"
  sha256 "60fbb808854210e1a12f7b26270792194fbde3daf2d5b863674e2b04edc7cb24"

  url "https://download01.xp-pen.com/file/#{version.csv.third}/#{version.csv.fourth}/XPPenMac_#{version.csv.first}_#{version.csv.second}.zip"
  name "XPPen PenTablet"
  desc "Universal driver for XPPen drawing tablets and pen displays"
  homepage "https://www.xp-pen.com/"

  # The file used in the cask has a date-based suffix and this has historically
  # aligned with the date in the URL path (e.g. _250102 in the file name and
  # /2025/01/ in the path). Unfortunately, this isn't always the case, so we
  # have to painstakingly recreate the upstream download page logic to generate
  # the download URL for the newest version to be able to match all the version
  # parts from the file URL.
  livecheck do
    url "https://www.xp-pen.com/download/star-g640.html"
    regex(/XPPenMac[._-]v?(\d+(?:\.\d+)+)[._-](\d+)/i)
    strategy :page_match do |page, regex|
      redirection_regex = Regexp.new(
        regex.source +
          ".*?data-id=[\"']?(\\d+)[\"']?" \
          "\\s+data-pid=[\"']?(\\d+)[\"']?" \
          "\\s+data-ext=[\"']?([^\"' >]+)[\"']?",
        "im",
      )

      # Find the newest XPPenMac version on the page and capture the `data`
      # attributes from the Download link after it
      match = page.scan(redirection_regex)
                  .max_by { |match| Version.new("#{match[0]}_#{match[1]}") }
      next if match.blank?

      # Generate the URL that redirects to the file and fetch the headers
      merged_headers = Homebrew::Livecheck::Strategy.page_headers(
        "https://www.xp-pen.com/download/file.html?id=#{match[2]}&pid=#{match[3]}&ext=#{match[4]}",
      ).reduce(&:merge)
      next if merged_headers.blank?

      # Collect the `version` parts from the file URL
      file_url_regex = Regexp.new("/(\\d+)/(\\d+)/" + regex.source, "i")
      match = merged_headers["location"]&.match(file_url_regex)
      next if match.blank?

      "#{match[3]},#{match[4]},#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  pkg "XPPenMac_#{version.csv.first}_#{version.csv.second}.pkg"

  uninstall launchctl: "com.ugee.Pentablet2.0",
            quit:      [
              "com.ugee.PenTablet",
              "com.ugee.PenTabletDriverPro",
              "com.ugee.pentabletInfo",
              "com.ugee.UninstallPenTablet",
            ],
            pkgutil:   "com.pkg.XPPen",
            delete:    [
              "/Applications/XPPen",
              "/Library/Application Support/PenDriver",
              "/Library/LaunchAgents/com.ugee.Pentablet2.0.plist",
            ]

  zap trash: [
    "~/Library/Application Support/PenTablet",
    "~/Library/Caches/com.ugee.PenTablet",
    "~/Library/Group Containers/com.ugee.PenTablet",
    "~/Library/HTTPStorages/com.ugee.PenTablet",
    "~/Library/Preferences/com.ugee.PenTablet.plist",
    "~/Library/Preferences/com.ugee.PenTabletDriverPro.plist",
    "~/Library/Preferences/com.ugee.pentabletInfo.plist",
    "~/Library/Saved Application State/com.ugee.PenTablet.savedState",
    "~/Library/WebKit/com.ugee.PenTablet",
  ]
end
