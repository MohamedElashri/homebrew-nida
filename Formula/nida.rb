class Nida < Formula
  desc "Small Go static site generator for blogs and personal sites"
  homepage "https://github.com/MohamedElashri/nida"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.1/nida_#{version}_darwin_arm64.tar.gz"
      sha256 "e0665e3e10c79e8da1b44f231f112fc9ff8a9ba67d49c39937cf7edcaa4164f1"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.1/nida_#{version}_darwin_x86_64.tar.gz"
      sha256 "5f1f367fc88740dc6d3e28ee32cc8bf8d776f3bd51413964722d387eb8bd99fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.1/nida_#{version}_linux_arm64.tar.gz"
      sha256 "864830627eef7fc0e61569f8609c2e22ec756edf0d2db168814198c74ab20090"
    else
      url "https://github.com/MohamedElashri/nida/releases/download/v0.3.1/nida_#{version}_linux_x86_64.tar.gz"
      sha256 "d40f1603c312209f18062e110e0144c8df349c88071346b39e7c632d73e42a9e"
    end
  end

  def install
    bin.install "nida"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nida version")
  end
end
