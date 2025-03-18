cask "v2rayxs" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.10"
  sha256 arm:   "0de8519d035db77c2ad314772db15b655e1ac7bec24e35768be745f3708a26b3",
         intel: "79fd9f2a48afe8d614d5c1954e4c89a965d3fbe23fd6f222efadaa0d474cc48c"

  url "https://github.com/tzmax/V2RayXS/releases/download/v#{version}/V2RayXS_#{arch}.app.zip"
  name "V2rayXS"
  desc "GUI for xray-core on macOS"
  homepage "https://github.com/tzmax/V2RayXS"

  app "V2rayXS.app"

  uninstall_preflight do
    set_ownership "/Library/Application Support/V2RayXS"
  end

  uninstall launchctl: "v2rayproject.v2rayxs.v2ray-core",
            signal:    ["TERM", "cenmrev.V2RayXS"],
            script:    {
              executable: "#{appdir}/V2RayXS.app/Contents/Resources/v2rayx_sysconf",
              args:       ["off"],
              sudo:       true,
            },
            delete:    "/Library/Application Support/V2RayXS"

  zap trash: [
    "~/Library/Application Support/V2RayXS",
    "~/Library/Preferences/cenmrev.V2RayXS.plist",
  ]
end
