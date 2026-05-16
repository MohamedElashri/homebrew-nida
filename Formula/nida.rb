class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.5/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "4e37a021c2290efa68b42e90575992a27dd0ad4fe92736d7636bd9a54171bd3c"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.5/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "48cf542575a6e898f6f06e85c57f73235e0b2c41904fb341e7fcee9bcd779f0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.5/nida_#{version}_linux_arm64.tar.gz"
      sha256 "762ffc131826ef1071e90699edd3a9634ebef88797afe3eafae5e941a3c37c1e"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.5/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "e58b4d7a1476129e116030822aecbdc61e93a5e5e502cf09f57ec1df16aa0b3e"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
