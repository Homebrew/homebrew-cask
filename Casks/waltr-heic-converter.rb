cask "waltr-heic-converter" do
  version "1.0.2,1537972843"
  sha256 "6e716143b73cf314e8fd1728a466ede9d7b99b1ec2364b55a7dad818ffcd1ab2"

  url "https://dl.devmate.com/com.softorino.WaltrHeicConverter/#{version.before_comma}/#{version.after_comma}/WALTRHEICConverter-#{version.before_comma}.zip"
  name "WALTR HEIC Converter"
  desc "Drag-and-drop HEIC to JPEG image converter"
  homepage "https://softorino.com/heic-converter/"

  livecheck do
    url "https://updates.devmate.com/com.softorino.WaltrHeicConverter.xml"
    strategy :sparkle do |item|
      timestamp = item.url.match(/\/(\d{10})\//i)
      next if timestamp.blank?

      "#{item.short_version},#{timestamp[1]}"
    end
  end

  auto_updates true

  app "WALTR HEIC Converter.app"
end
