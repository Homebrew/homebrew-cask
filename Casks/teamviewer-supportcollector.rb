cask 'teamviewer-supportcollector' do
  version :latest
  sha256 :no_check

  url 'https://downloadeu9.teamviewer.com/support/SupportCollector.app.zip'
  name 'TeamViewer Support Collector'
  homepage 'https://www.teamviewer.com/en/help'

  app 'TeamViewer SupportCollector.app'
end
