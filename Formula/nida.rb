class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.0/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "4de1d027f1999595aa39f4aee31c4b1f3588fb3ce9c8025e3994ed1cbc385e3f"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.0/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "a040d63ca405248c608a97d4ec7d0bfc5b9e893085658ea02aabfcc636911b4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.0/nida_#{version}_linux_arm64.tar.gz"
      sha256 "a1de30357f8aa5d6e99da5811c62a58220f6035aacc31b129a3faef6a23608b8"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.0/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "7b3c7a00ded73b16838ef7cc51d8726a9bdba1b23b114745031ee2bf8b81e1d2"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
