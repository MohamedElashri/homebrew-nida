class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.0/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "b671982187701ec2cdbf88ae1c0319fc2b024393e4bf732ef491899982f9afcb"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.0/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "bd99b66c6eaa6bfecd1a6b651f937bc812dc353e4106c29b92775a73adfbfedd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.0/nida_#{version}_linux_arm64.tar.gz"
      sha256 "f9740d5f493b748eb9f12187029be6e833cae6ad0662223f7f8718958a203e46"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.0/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "512649b43cdf01e85793a651caf6f8464d882d5724fd9b0aeb69f7f099c1c90a"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
