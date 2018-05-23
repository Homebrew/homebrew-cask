cask 'teamviewer-supportcollector' do
  version :latest
  sha256 :no_check

  # dl.tvcdn.de/support was verified as official when first introduced to the cask
  url 'https://dl.tvcdn.de/support/SupportCollector.app.zip'
  name 'TeamViewer Support Collector'
  homepage 'https://community.teamviewer.com/t5/TeamViewer-11/How-to-submit-a-ticket/td-p/72'

  app 'TeamViewer SupportCollector.app'
end
