class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.1/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "838894c7055077f9a1e85d74b4cc9659699645b6ce690bfb88299f9817b07f4b"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.1/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "5bb7426ce6705bc58fcc4045be78910ed4ff5d8a3a4913662d67dc3920a6e7f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.1/nida_#{version}_linux_arm64.tar.gz"
      sha256 "039a6567654bb9c73398e5809abba44800863206d0e08d02ab55c8ca07910e60"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.1/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "6891310dcb7529cbe88ce41da1e81fc59b272b2613207f27e841dc9b8e836b75"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
