cask "teamviewermeeting" do
  version "15.12.6"
  sha256 "fba3fe74dcd2e32fc161a97920f050db3786e550f01359c3926d83dfbe38389b"

  url "https://dl.teamviewer.com/teamviewermeeting/installer/mac/#{version}/TeamViewerMeeting.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.teamviewer.com/blizz/mac"
  name "TeamViewerMeeting"
  homepage "https://www.teamviewer.com/meeting/"

  app "TeamViewerMeeting.app"
end
