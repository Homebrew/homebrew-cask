cask "xtool-studio" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "1.1.10,121,43bc6fb6-d1c6-4b64-83c8-a06b2c214614"
    sha256 "6be9c9f22e538a04ce54ddd1cc32e0fe7cc211d29fdfb625014aa9d26825ae75"
  end
  on_intel do
    version "1.1.10,110,4f6db9be-6a59-4505-9e95-c09f67dc0694"
    sha256 "394dbd39296eb57265910f5a22c49652f1fcca57eb50a3f806c6ac19a8d35d1e"
  end

  url "https://storage.atomm.com/efficacy/atomm-package/prod/packages/#{version.csv.second}/#{version.csv.third}/xTool-Studio-#{arch}-#{version.csv.first}.dmg",
      verified: "storage.atomm.com/efficacy/atomm-package/"
  name "xTool Studio"
  desc "Design and control software for xTool laser machines"
  homepage "https://www.xtool.com/pages/software"

  livecheck do
    url :homepage
    regex(%r{href=.*?/([^/]+)/([^/]+)/xTool[._-]Studio(?:[._-]#{arch})?[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
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
