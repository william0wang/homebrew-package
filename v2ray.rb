class V2ray < Formula
  desc "V2Ray provides building blocks for network proxy development."
  homepage "https://github.com/v2ray/v2ray-core"
  url "https://github.com/v2ray/v2ray-core/releases/download/v2.3.3/v2ray-macos.zip"
  version "2.3.3"
  sha256 "cc0de57ada8355a18310f072db54d7dd7530e68535bd3b8ad63c8570583d86cf"

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>RunAtLoad</key>
        <true/>
        <key>KeepAlive</key>
        <false/>
        <key>ProgramArguments</key>
        <array>
            <string>#{bin}/v2ray</string>
            <string>-config</string>
            <string>#{etc}/v2ray.json</string>
        </array>
        <key>WorkingDirectory</key>
        <string>#{HOMEBREW_PREFIX}</string>
      </dict>
    </plist>
    EOS
  end


  def install
    bin.install "v2ray"
    etc.install "config.json" => "v2ray.json"
  end
end
