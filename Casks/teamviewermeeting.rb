cask "teamviewermeeting" do
  version "15.13.6"
  sha256 "0cf9511373d0194601f67489ce0db2f20e966e603968db869d947d6b87c07cbc"

  url "https://dl.teamviewer.com/teamviewermeeting/installer/mac/#{version}/TeamViewerMeeting.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.teamviewer.com/blizz/mac"
  name "TeamViewerMeeting"
  desc "Cross-platform videoconferencing and communication software"
  homepage "https://www.teamviewer.com/meeting/"

  app "TeamViewerMeeting.app"
end
