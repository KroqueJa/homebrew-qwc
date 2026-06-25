  class Qwc < Formula
    desc "A utility to count things. Quickly."
    homepage "https://github.com/KroqueJa/qwc"
    version "0.5.0"
    license "MIT"

    on_macos do
      on_arm do
        url "https://github.com/KroqueJa/qwc/releases/download/v#{version}/qwc-macos-arm64.tar.gz"
        sha256 "a51d3953a46f8315ab506c52dd92a7f985ce010a2607eebfb96b29eb9bcb1355"
      end
    end

    on_linux do
      on_intel do
        url "https://github.com/KroqueJa/qwc/releases/download/v#{version}/qwc-linux-x86_64.tar.gz"
        sha256 "df18e8308fe8498143484dc881d7cec834cc288d37aeeb0056d9165d2abae280"
      end
    end
  
    def install
      bin.install "qwc"
    end

    test do
      assert_match "qwc", shell_output("#{bin}/qwc --version")
    end
  end
