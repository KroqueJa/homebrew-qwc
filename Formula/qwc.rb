  class Qwc < Formula
    desc "A utility to count things. Quickly."
    homepage "https://github.com/KroqueJa/qwc"
    version "0.2.0"
    license "MIT"

    on_macos do
      on_arm do
        url "https://github.com/KroqueJa/qwc/releases/download/v#{version}/qwc-macos-arm64.tar.gz"
        sha256 "d32140099a59d94225cb82e99b0f52097fe6043001fd890d86eaa6d3e480f380"
      end
    end

    on_linux do
      on_intel do
        url "https://github.com/KroqueJa/qwc/releases/download/v#{version}/qwc-linux-x86_64.tar.gz"
        sha256 "32029a336b23777596ec55e67329f61919b85c4dbf880518cfbb4133fcc27b75"
      end
    end
  
    def install
      bin.install "qwc"
    end

    test do
      assert_match "qwc", shell_output("#{bin}/qwc --version")
    end
  end
