cask "teamviewermeeting" do
  version "15.14.2"
  sha256 "5225a225c592e4051a84138d0ea0208c319adc2668abd828c45a91886e8a4ccc"

  url "https://dl.teamviewer.com/teamviewermeeting/installer/mac/#{version}/TeamViewerMeeting.dmg"
  name "TeamViewerMeeting"
  desc "Videoconferencing and communication software"
  homepage "https://www.teamviewer.com/meeting/"

  livecheck do
    url "https://download.teamviewer.com/blizz/mac"
    strategy :header_match
  end

  app "TeamViewerMeeting.app"
end
