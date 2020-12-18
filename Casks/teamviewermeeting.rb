cask "teamviewermeeting" do
  version "15.13.10"
  sha256 "31b729de17f474f94e909527ce25557db0eec4f7b80f2d0a86d657cce6f18ca1"

  url "https://dl.teamviewer.com/teamviewermeeting/installer/mac/#{version}/TeamViewerMeeting.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.teamviewer.com/blizz/mac"
  name "TeamViewerMeeting"
  desc "Cross-platform videoconferencing and communication software"
  homepage "https://www.teamviewer.com/meeting/"

  app "TeamViewerMeeting.app"
end
