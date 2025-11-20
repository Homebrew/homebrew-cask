cask "xunfeitingjian" do
  version "25.10.2400"
  sha256 "1993decca93b24bc46ed11d2cc86d19304a67263a6c040c882dfdcf4d4d215f6"

  url "https://www.iflyrec.com/download/tjzs/JS10010016/mac/iflyrec_meeting_v#{version}_JS10010016M.pkg"
  name "xunfeitingjian"
  name "讯飞听见"
  desc "Audio-to-text transcription service"
  homepage "https://www.iflyrec.com/html/iflyrecAssistant.html"

  livecheck do
    url "https://www.iflyrec.com/UpdateService/v1/updates/hardware/deltaPatch/check"
    strategy :page_match do |_page|
      json_data = "{\"clientVersion\":\"#{version}\",\"deviceType\":\"MacOSX\",\"platform\":\"63\"}"

      cmd = "curl -s -X POST -H 'Content-Type: application/json' -d '#{json_data}' '#{url}'"
      result = `#{cmd}`

      require "json"
      json_response = JSON.parse(result)

      json_response["biz"]["latestVersion"] if json_response["code"] == "000000"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "iflyrec_meeting_v#{version}_JS10010016M.pkg"

  uninstall pkgutil: "com.iflyrec.iflyrecClient"

  zap trash: [
    "~/Library/Application Support/iflyrecAssistant",
    "~/Library/Preferences/com.electron.iflyrecclient.plist",
  ]
end
