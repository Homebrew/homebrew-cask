cask "teamviewermeeting" do
  version "15.13.11"
  sha256 "9cc468ccc4fa8bf21ed98f4671db9e4be33922e1545e168028f7ae6700b874e7"

  url "https://dl.teamviewer.com/teamviewermeeting/installer/mac/#{version}/TeamViewerMeeting.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.teamviewer.com/blizz/mac"
  name "TeamViewerMeeting"
  desc "Cross-platform videoconferencing and communication software"
  homepage "https://www.teamviewer.com/meeting/"

  app "TeamViewerMeeting.app"
end
