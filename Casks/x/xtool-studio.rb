cask "xtool-studio" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "1.2.11,121,c518d71e-2d6a-4494-851f-8e61b8a76949"
    sha256 "07222ff336d46b907958bb776ed23663f0bf27d8dd6bf7f176675b6ed9dd37ed"
  end
  on_intel do
    version "1.2.11,110,86dfe506-dfa2-46d7-952f-126e743ab28b"
    sha256 "79ac714c421359bbcbc90b5dca3a5bca1cbd4b5cfa794fa2d0fda1ab32e07526"
  end

  url "https://storage.atomm.com/efficacy/atomm-package/prod/packages/#{version.csv.second}/#{version.csv.third}/xTool-Studio-#{arch}-#{version.csv.first}.dmg",
      verified: "storage.atomm.com/efficacy/atomm-package/"
  name "xTool Studio"
  desc "Design and control software for xTool laser machines"
  homepage "https://www.xtool.com/pages/software"

  livecheck do
    url :homepage
    regex(%r{/([^/\\]+)\\?/([^/\\]+)\\?/xTool[._-]Studio(?:[._-]#{arch})?[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[3]},#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "xTool Studio.app"

  zap trash: [
    "~/Library/Application Support/xTool Studio",
    "~/Library/Logs/xTool Studio",
    "~/Library/Preferences/com.makeblock.xtool-studio.plist",
    "~/Library/Saved Application State/com.makeblock.xtool-studio.savedState",
  ]
end
