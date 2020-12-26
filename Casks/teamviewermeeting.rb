cask "teamviewermeeting" do
  version "15.13.11"
  sha256 "9cc468ccc4fa8bf21ed98f4671db9e4be33922e1545e168028f7ae6700b874e7"

  url "https://dl.teamviewer.com/teamviewermeeting/installer/mac/#{version}/TeamViewerMeeting.dmg"
  name "TeamViewerMeeting"
  desc "Cross-platform videoconferencing and communication software"
  homepage "https://www.teamviewer.com/meeting/"

  livecheck do
    url "https://download.teamviewer.com/blizz/mac"
    strategy :header_match
  end

  app "TeamViewerMeeting.app"
end
