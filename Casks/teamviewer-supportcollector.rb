cask 'teamviewer-supportcollector' do
  version :latest
  sha256 :no_check

  url 'https://downloadeu9.teamviewer.com/support/SupportCollector.app.zip'
  name 'TeamViewer Support Collector'
  homepage 'https://community.teamviewer.com/t5/TeamViewer-11/How-to-submit-a-ticket/td-p/72'

  app 'TeamViewer SupportCollector.app'
end
