class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.2/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "04f937487946591153dc2b1eff15aa75c32737846d8cc6207fd72a03c03b7a24"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.2/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "ad58198e6ed824f4319b7afa144932124474a286d7865d868d1a280dc5d17577"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.2/nida_#{version}_linux_arm64.tar.gz"
      sha256 "832ec0878910960d4218803d29f369d34a2ee5846daa5e65cc671f794ba1a805"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.2/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "b59633aeafa93951e79538905ad4344f776e54a936c54bc5eaa447e270f08fab"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
