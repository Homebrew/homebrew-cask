require 'test_helper'

describe Plist do
  it 'parses some hdiutil output okay' do
    hdiutil_output = <<-HDIUTILOUTPUT
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>system-entities</key>
  <array>
    <dict>
      <key>content-hint</key>
      <string>Apple_partition_map</string>
      <key>dev-entry</key>
      <string>/dev/disk3s1</string>
      <key>potentially-mountable</key>
      <false/>
      <key>unmapped-content-hint</key>
      <string>Apple_partition_map</string>
    </dict>
    <dict>
      <key>content-hint</key>
      <string>Apple_partition_scheme</string>
      <key>dev-entry</key>
      <string>/dev/disk3</string>
      <key>potentially-mountable</key>
      <false/>
      <key>unmapped-content-hint</key>
      <string>Apple_partition_scheme</string>
    </dict>
    <dict>
      <key>content-hint</key>
      <string>Apple_HFS</string>
      <key>dev-entry</key>
      <string>/dev/disk3s2</string>
      <key>mount-point</key>
      <string>/private/tmp/dmg.BhfS2g</string>
      <key>potentially-mountable</key>
      <true/>
      <key>unmapped-content-hint</key>
      <string>Apple_HFS</string>
      <key>volume-kind</key>
      <string>hfs</string>
    </dict>
  </array>
</dict>
</plist>
    HDIUTILOUTPUT

    parsed = Plist.parse_xml(hdiutil_output)

    parsed.keys.must_equal ['system-entities']
    parsed['system-entities'].length.must_equal 3
    parsed['system-entities'].map { |e| e['dev-entry'] }.must_equal %w[
      /dev/disk3s1
      /dev/disk3
      /dev/disk3s2
    ]
  end

  it 'can ignore garbage output before xml starts' do
    hdiutil_output = <<-HDIUTILOUTPUT
Hello there! I am in no way XML am I?!?!

  That's a little silly... you were expexting XML here!

What is a parser to do?

Hopefully <not> explode!

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
  <key>system-entities</key>
  <array>
    <dict>
      <key>content-hint</key>
      <string>Apple_HFS</string>
      <key>dev-entry</key>
      <string>/dev/disk3s2</string>
      <key>mount-point</key>
      <string>/private/tmp/dmg.BhfS2g</string>
      <key>potentially-mountable</key>
      <true/>
      <key>unmapped-content-hint</key>
      <string>Apple_HFS</string>
      <key>volume-kind</key>
      <string>hfs</string>
    </dict>
  </array>
</dict>
</plist>
    HDIUTILOUTPUT

    parsed = Plist.parse_xml(hdiutil_output)

    parsed.keys.must_equal ['system-entities']
    parsed['system-entities'].length.must_equal 1
  end

  it 'does not choke on empty input' do
    Plist.parse_xml('').must_equal {}
  end
end
