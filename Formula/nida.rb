class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.3/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "bb2fa2413a87e946178c157ca1215bf47b5139e143a257e2feea94ad4a48f4cb"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.3/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "743bbf351aeb95cbca2174d63451a91e9922faba3b5c453f24afd46414211b4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.3/nida_#{version}_linux_arm64.tar.gz"
      sha256 "db7f9425c4c052c281250a455b13dfb2b65dec40e755a9c62f69498e98836198"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.3/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "c562165b80c177ae1ef64a9929b698202d9e14a4f826a118073794ccf01c36a6"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
