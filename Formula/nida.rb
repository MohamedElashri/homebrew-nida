class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.2.0/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "485a5dd05a714d8a4a05fda19c0c3046a77b62fc46d300316e4702b5262ed5af"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.2.0/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "295d71ec0b45cdad819e04e3140eb27123047a50d492ee5ae7cea9a3a58f4659"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.2.0/nida_#{version}_linux_arm64.tar.gz"
      sha256 "de568b390a7e10f061d124809f2ac8bfa6202ab6cd5697445566b5cd8d368b3b"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.2.0/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "f13a6a8ee8c9effcdde0206282917ced64fed6743200fe771724f6905d2e2cf2"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
