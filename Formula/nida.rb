class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.3/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "2e8ca090e6b623c24677d608e508549dd1fa8eff863b191d73356bbc6eee6653"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.3/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "dddb4aa6e82a4bcdf16a0d4cc929aaea4fb07daca37c8774e2ad85bf220aac0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.3/nida_#{version}_linux_arm64.tar.gz"
      sha256 "6bb310262fca445581bd8bf7f81a6b0dab9659bdad42a9fea05601bd40c62d59"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.3/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "200485a670b3bed5c56b28dce9592bd77dd30b2aef9e656c52e41db412bb2070"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
