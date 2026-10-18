class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.0/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "926e9d91d6aca13689b3f037241bde6faec90623ac49d873fff6dcd2068dd7bd"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.0/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "65cef407fc9f7f44db6bca6a590d357f9285de53dc5b9dd3ae565ce4285e576f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.0/nida_#{version}_linux_arm64.tar.gz"
      sha256 "ac5e956aa666b93924b1c023c2d20a2a3a08356562ace05731738d81ed01e911"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.8.0/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "5ca0c44888b037383b299e30d5c60b3ac2f73a7f4b6b201c72961a277f8a68bf"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
