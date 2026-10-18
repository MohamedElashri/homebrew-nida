class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.7.0/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "44324fa7f7ae83dbdf31d29d312b2a74d5e28de1a4fd1ff967f018b7860cbf8f"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.7.0/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "09187aa21bc110438cdd7f2f774a2574421d269ee35eeb6bda0e9a2c71637709"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.7.0/nida_#{version}_linux_arm64.tar.gz"
      sha256 "41ee8cf329ae8e5953a3250405cc29155d37c56aa48a57606161af1973e56840"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.7.0/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "75a1892d242cf6281f84d5c5921ec5cfeef96632e9ddc9a15e7d7523d7ca2ecd"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
