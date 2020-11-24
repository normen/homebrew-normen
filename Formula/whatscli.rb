class Whatscli < Formula
  desc "Command-line interface for WhatsApp"
  homepage "https://github.com/normen/whatscli"
  url "https://github.com/normen/whatscli/archive/v0.9.2.tar.gz"
  sha256 "e03ce5052d2d45ebeab0afffa6107a1801f1e5dfb733426bbf0da3602c8312a4"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-o", "whatscli"
    mkdir bin.to_s
    cp "whatscli", "#{bin}/"
  end

  test do
    #system "#{bin}/whatscli"
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test whatscli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
