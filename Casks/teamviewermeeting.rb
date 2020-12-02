cask "teamviewermeeting" do
  version "15.13.2"
  sha256 "e43fb97b302a48004b6802e165d9aebd420e402dfc515ad8c6c38c1d95fe7a73"

  url "https://dl.teamviewer.com/teamviewermeeting/installer/mac/#{version}/TeamViewerMeeting.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.teamviewer.com/blizz/mac"
  name "TeamViewerMeeting"
  desc "Cross-platform videoconferencing and communication software"
  homepage "https://www.teamviewer.com/meeting/"

  app "TeamViewerMeeting.app"
end
