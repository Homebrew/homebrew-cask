cask "teamviewermeeting" do
  version "15.12.8"
  sha256 "5c1e32e1b35c7373e2eb160a97c05ca11bd69798d220a2b3ffed4c3d4399d8b5"

  url "https://dl.teamviewer.com/teamviewermeeting/installer/mac/#{version}/TeamViewerMeeting.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.teamviewer.com/blizz/mac"
  name "TeamViewerMeeting"
  desc "Cross-platform videoconferencing and communication software"
  homepage "https://www.teamviewer.com/meeting/"

  app "TeamViewerMeeting.app"
end
