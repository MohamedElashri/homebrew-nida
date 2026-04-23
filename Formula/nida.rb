class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.2/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "739a7e06eb9dae44801cd02966204edfba343f6d71e6fba40dae891bba769fd5"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.2/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "99d010ac2476cde005139a5f278b1aa0d82c2a44b78480a8594f4ae734db3ac1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.2/nida_#{version}_linux_arm64.tar.gz"
      sha256 "712ffb0bd200442cd001a00cffcad0883e1bd49e0e4499ca40785735e4063a7a"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.2/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "a4205dc1ff786a55c9b32709d29fb9f3f81b4990078818de459f262414e88cf3"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
