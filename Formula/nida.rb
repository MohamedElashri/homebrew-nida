class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.5.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.9/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "a0591c3515a49a3a8b0a62a7a05077c632ad714c0bcafdf3453194a52dc1e830"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.9/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "952ccd22cd3553645683d3a13a78b68efd61a585201a0d24d8e07b0ba6ea9b21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.9/nida_#{version}_linux_arm64.tar.gz"
      sha256 "a0c522b28c4be0a4c10d8d8663d71eaba6dd2d092afcddde40d68e36a84e9179"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.5.9/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "930400511c6ad473b7c51cb097ca64455b3eed5d77897575de5533a84ac5009e"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
