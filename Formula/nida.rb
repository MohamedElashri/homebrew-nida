class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.0/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "5d51c44e307cc9a1b9e9339361a7573f2a931cc357621987913e2bdc66d7dc66"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.0/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "a5a7c8f0417d6ec3a65e80e4cf8fe84b34ab5d7df8e773f654fc872f02ee00a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.0/nida_#{version}_linux_arm64.tar.gz"
      sha256 "eed35198f10b55e0dbd1d4f0569f2b03713e252e2ec7dedbe03219cc90d1af00"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.0/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "2bd19d660f8c53d7d8138d4e5cbe0028656582a2f0b3b0a74f0d713122794e45"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
