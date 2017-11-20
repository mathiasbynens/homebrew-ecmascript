class Chakra < Formula
  desc "The core part of the JavaScript engine that powers Microsoft Edge"
  homepage "https://github.com/Microsoft/ChakraCore"
  url "https://aka.ms/chakracore/cc_osx_x64_1_7_4"
  sha256 "71473323193c6285f268160e2ec5bf8e14d6b6bc8c4844040b7b408d750b8a2a"

  def install
    lib.install "lib/libChakraCore.dylib"
    bin.install "bin/ch" => "chakra"
  end

  test do
    (testpath/"test.js").write("print('Hello!');\n")
    assert_equal "Hello!", shell_output("#{bin}/chakra test.js").chomp
  end
end
