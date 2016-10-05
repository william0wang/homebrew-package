class V2ray < Formula
  desc "V2Ray provides building blocks for network proxy development."
  homepage "https://github.com/v2ray/v2ray-core"
  url "https://github.com/v2ray/v2ray-core/releases/download/v2.2.1/v2ray-macos.zip"
  version "2.2.1"
  sha256 "fb8871986a175dc065a2cd608b614ca3ea907d9ef82dd396196d3938c4b80c19"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    bin.install "v2ray"
  end
end
