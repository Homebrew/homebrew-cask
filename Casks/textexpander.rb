cask :v1 => 'textexpander' do

  if MacOS.version == :snow_leopard
    version '3.4.2'
    sha256 '87859d7efcbfe479e7b78686d4d3f9be9983b2c7d68a6122acea10d4efbb1bfa'
  elsif MacOS.version >= :lion
    version '4.3.4'
    sha256 'f5862333a3c9da5292c9c91bff55a3c7a1358481aa6871237b9661a22694eda1'
  end

  url "http://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  appcast 'http://updates.smilesoftware.com/com.smileonmymac.textexpander.xml',
          :sha256 => 'ef5c8e0eed832ed1ffb43f2e324ca5d1857db5bd9d6f7e1e36ecce476cb59e0a'
  homepage 'http://www.smilesoftware.com/TextExpander/index.html'
  license :unknown

  app 'TextExpander.app'
end
