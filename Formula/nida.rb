class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.2/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "6b91effa22cb070790b2275f9bfc066be2c4ffaff9db5941d80cc312e62d42d8"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.2/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "2617ada27eadee68feed117b63e50c5aad39908284411165222b565093f3c86a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.2/nida_#{version}_linux_arm64.tar.gz"
      sha256 "e7bef9af2b639cc67e628c052abf5480001e20ae47c4c3c3b26d2bf8bda8a47a"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.2/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "bfa3eeccdf22546018c98fffe99021c2574bee434a85681d98f1c69941dc100b"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
