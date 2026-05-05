class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.4/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "a7bed64db8a6e050dc17bef85bc3c61f9fe1f96cb9f3af3d62e7a54fcbae9dd6"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.4/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "70ddd2fc7524d5e2c8731996cffeceabd45aefe8dcfd1e98da6fdb049ec59e41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.4/nida_#{version}_linux_arm64.tar.gz"
      sha256 "8970c60d95bc58d6fabbe56c87574ee4a265f764738969d6df456d5e7064fda7"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.4/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "745259b481c309ac691d230fb2b35e9e8a52998bb4ac9a7189f8e34187a2a34f"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
