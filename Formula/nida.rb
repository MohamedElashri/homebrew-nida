class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.5.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.10/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "98dd533ebb92712c9acecf25cc4626b653ff9b6b21d3577929c4f9696910d119"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.10/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "3de1a495f7950c7ccbbce64745499122ebf94e75584c39759712b2af11d76587"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.10/nida_#{version}_linux_arm64.tar.gz"
      sha256 "7b5d511d228e5b2476cd9074d427363cb503f0b5e7973f9381f7d41b80d9dd85"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.10/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "050cddbc55488843eddeb9fad6e94f3a7005b7c0ecbb1eb81a315cef0e75b681"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
