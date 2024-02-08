cask "v2rayx" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.5.1"
  sha256 "007ec1de5c8f768eb7be42df1980a4998fbf953d29d6c80019bd826272855239"

  url "https://github.com/Cenmrev/V2RayX/releases/download/v#{version}/V2RayX.app.zip"
  name "V2RayX"
  desc "GUI for v2ray-core"
  homepage "https://github.com/Cenmrev/V2RayX"

  app "V2RayX.app"

  uninstall_preflight do
    set_ownership "/Library/Application Support/V2RayX"
  end

  uninstall launchctl: "v2rayproject.v2rayx.v2ray-core",
            signal:    ["TERM", "cenmrev.V2RayX"],
            script:    {
              executable: "#{appdir}/V2RayX.app/Contents/Resources/v2rayx_sysconf",
              args:       ["off"],
              sudo:       true,
            },
            delete:    "/Library/Application Support/V2RayX"

  zap trash: [
    "~/Library/Application Support/V2RayX",
    "~/Library/Preferences/cenmrev.V2RayX.plist",
  ]
end
