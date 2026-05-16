class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.5.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.6/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "94196888af4bf29f067963e59f792109f9471024164f6de521ad723686ea433c"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.6/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "6d1bfba43cb0f805ae814b9de157b6e2fede6b545ae6fd6418dbc460bd2b4b0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.6/nida_#{version}_linux_arm64.tar.gz"
      sha256 "dd5d29a513dec68cd0833ba4bced6eeba0538d589b2c1bbee931602087aa6128"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.6/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "60048c47f6b773462370124ab11321ac6b11b159785a455f68176272fd70e965"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
