cask "whatpulse" do
  arch arm: "-arm"

  version "6.3.2"
  sha256 arm:   "67531164d7fbb84b64f8610e4470953cb35e99b84a9ffc08d7ae57bffd2d050d",
         intel: "7ff2476151514b1cabadee3182c7c5d76bd14fd98b01fc8a9be96727b6892933"

  url "https://releases.whatpulse.org/archives/#{version}/macos#{arch}/whatpulse-mac#{arch}-#{version}.dmg"
  name "WhatPulse"
  desc "Computer usage statistics tracker"
  homepage "https://whatpulse.org/"

  livecheck do
    url "https://releases.whatpulse.org/updates/macos#{arch}/Updates.xml"
    strategy :xml do |xml|
      xml.elements["/Updates/PackageUpdate[Name='com.whatpulse.client']/Version"]&.text&.strip
    end
  end

  auto_updates true
  depends_on macos: :monterey

  installer script: {
    executable: "WhatPulse-#{version}-Installer.app/Contents/MacOS/WhatPulse-#{version}-Installer",
    args:       [
      "--root", "#{appdir}/WhatPulse",
      "--accept-messages", "--accept-licenses", "--confirm-command",
      "--cache-path", "#{staged_path}/cache",
      "install", "NoLaunch=true"
    ],
  }

  uninstall script: {
              executable: "#{appdir}/WhatPulse/WhatPulseMaintenanceTool.app/Contents/MacOS/WhatPulseMaintenanceTool",
              args:       ["--confirm-command", "remove", "com.whatpulse.client", "com.whatpulse.maintenancetool"],
            },
            trash:  "#{appdir}/WhatPulse"

  zap trash: [
    "~/Library/Application Support/WhatPulse",
    "~/Library/Caches/com.whatpulse.mac",
    "~/Library/Preferences/com.whatpulse.mac.plist",
    "~/Library/Preferences/com.whatpulse.WhatPulse.plist",
    "~/Library/Preferences/org.whatpulse.WhatPulse.plist",
  ]
end
