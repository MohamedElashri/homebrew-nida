class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.5/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "8cffd69997e06f14b9c4637b1466d4465f33e7e0f7be6f7b4d95172fa02fc1f2"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.5/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "462b0ecdae7a3e1b9592a9136d65af8e5fc3f9af0621144e2263248bfebd840b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.5/nida_#{version}_linux_arm64.tar.gz"
      sha256 "f0e0d6ba87de9b278d5b1eb085dc3397a4196d0efd1398a4e7f718a1ea69b040"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.4.5/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "5a23da762cacee907cfdeabdfbf56e5a27d922ab3f4088ce7b72a34c7f41fbb5"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
