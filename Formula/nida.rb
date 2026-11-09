class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.8.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.5/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "f4256f615d44608143f72f6c0f1bc908d4849235bb9010512ab7da92dc01673c"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.5/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "ce55ffde75e6e50ba493cfa059daa186e56ac5957cea3f2c1f19ccf92e32d734"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.5/nida_#{version}_linux_arm64.tar.gz"
      sha256 "43fd340404086a918de99826311ec01ef14aead649a538f15df13e8b87cfb895"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.5/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "a982311b61210a0e30be5408453e3176d9decbabce6612e61c01433266f3f70f"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
