class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.1/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "c2962342ae9279c0a4b01c0d3adba3838333d8c874dc8d9c19b9f76280d46c03"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.1/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "3e87cc19dc2b575b42ce80a5268dc0874ccf8bfba294201714d3ac4b782a6568"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.1/nida_#{version}_linux_arm64.tar.gz"
      sha256 "a73f9f90ffe21c58c7f3f329d70e77edabeeaf30778fcf4945a70ad13e4455f7"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.1/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "c6025f008df1eacf6434341049dc2fdde05916f578f14016da2d17d9224eedd3"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
