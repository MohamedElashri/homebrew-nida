class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.5.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.8/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "95ed1a636c1a5592006acc0d87ba247186fad2c55da3cd0e690d80e3a457032b"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.8/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "2f75d9c3b5eea411f8c0c5795cc342a4661f21a8522826c95e90b94ffcb58575"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.8/nida_#{version}_linux_arm64.tar.gz"
      sha256 "c2706f3b3289c571daa0802825a5733385d3c7edfdb88d80507398f194418ee1"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.8/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "3152d4228644f6974a6f4e4dae4fbc8d075db3bcb10f5bc7931a5c59b97e992a"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
