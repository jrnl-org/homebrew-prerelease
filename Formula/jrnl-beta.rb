class JrnlBeta < Formula
  include Language::Python::Virtualenv

  desc "Command-line note taker"
  homepage "https://jrnl.sh/"
  url "https://files.pythonhosted.org/packages/77/48/6c9cf73f34cee1f1578c6ad07d151dd6aa9ba63fd4d1f1811f9b20d06309/jrnl-2.8b0.tar.gz"
  version "2.8b0"
  sha256 "b01d1cf129f6eee3f305c3d13d6cd1d3fe6e64bccd08571c2bd20e822c5584fe"
  license "GPL-3.0-only"

  bottle do
    sha256 cellar: :any, arm64_big_sur: "5e7f32f806e443d3f55d478049b02238983804751fc0c14b252fa742fc3ac415"
    sha256 cellar: :any, big_sur:       "6a04f3c850ce99ad46329f20adceb5bf66d603fa2bca6f0acce166f7018d964e"
    sha256 cellar: :any, catalina:      "b2c250572ec81331c3ffa66b8a3c2fb20d9e47ad37a450969c75af8697303d1b"
    sha256 cellar: :any, mojave:        "ec97793883d503e7547bc740fa081e5b6aa66ebb87d91d7000480f60ab3d911a"
  end

  depends_on "rust" => :build
  depends_on "python@3.9"

  uses_from_macos "expect" => :test

  on_linux do
    depends_on "pkg-config" => :build
  end

  resource "ansiwrap" do
    url "https://files.pythonhosted.org/packages/7c/45/2616341cfcace37d4619d5106a85fcc24f2170d1a161bc5f7fdb81772fbc/ansiwrap-0.8.4.zip"
    sha256 "ca0c740734cde59bf919f8ff2c386f74f9a369818cdc60efe94893d01ea8d9b7"
  end

  resource "asteval" do
    url "https://files.pythonhosted.org/packages/32/06/efc5ea08dc44836abbabbd949d944d6fde08312ce756557e16ab1ca477a4/asteval-0.9.23.tar.gz"
    sha256 "f5096a924b1d2f147e70327245d95fc8f534dbe94277b6828ce2a8c049d3a438"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/a8/20/025f59f929bbcaa579704f443a438135918484fffaacfaddba776b374563/cffi-1.14.5.tar.gz"
    sha256 "fd78e5fee591709f32ef6edb9a015b4aa1a5022598e36227500c8f4e02328d9c"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/1f/bb/5d3246097ab77fa083a61bd8d3d527b7ae063c7d8e8671b1cf8c4ec10cbe/colorama-0.4.4.tar.gz"
    sha256 "5941b2b48a20143d2267e95b1c2a7603ce057ee39fd88e7329b0c292aa16869b"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/fa/2d/2154d8cb773064570f48ec0b60258a4522490fcb115a6c7c9423482ca993/cryptography-3.4.6.tar.gz"
    sha256 "2d32223e5b0ee02943f32b19245b61a62db83a882f0e76cc564e1cec60d48f87"
  end

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/99/23/aac25e607237feabe8d076932d27a590341001a9bf8a1e4149ee1c3c3c40/importlib_metadata-3.7.3.tar.gz"
    sha256 "742add720a20d0467df2f444ae41704000f50e1234f46174b51f9c6031a1bd71"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/e8/3e/4daf55c21dc38dfa39a5780fb1c9a15dbbe8d680a715b0c81c29be51662c/keyring-23.0.0.tar.gz"
    sha256 "237ff44888ba9b3918a7dcb55c8f1db909c95b6f071bfb46c6918f33f453a68a"
  end

  resource "parsedatetime" do
    url "https://files.pythonhosted.org/packages/a8/20/cb587f6672dbe585d101f590c3871d16e7aec5a576a1694997a3777312ac/parsedatetime-2.6.tar.gz"
    sha256 "4cb368fbb18a0b7231f4d76119165451c8d2e35951455dfee97c62a87b04d455"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/0f/86/e19659527668d70be91d0369aeaa055b4eb396b0f387a4f92293a20035bd/pycparser-2.20.tar.gz"
    sha256 "2d475327684562c3a96cc71adf7dc8c4f0565175cf86b6d7a404ff4c771f15f0"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/b0/61/eddc6eb2c682ea6fd97a7e1018a6294be80dba08fa28e7a3570148b4612d/pytz-2021.1.tar.gz"
    sha256 "83a4a90894bf38e243cf052c8b58f381bfe9a7a483f6a9cab140bc7f702ac4da"
  end

  resource "pyxdg" do
    url "https://files.pythonhosted.org/packages/6f/2e/2251b5ae2f003d865beef79c8fcd517e907ed6a69f58c32403cec3eba9b2/pyxdg-0.27.tar.gz"
    sha256 "80bd93aae5ed82435f20462ea0208fb198d8eec262e831ee06ce9ddb6b91c5a5"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
    sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
    sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
  end

  resource "textwrap3" do
    url "https://files.pythonhosted.org/packages/4d/02/cef645d4558411b51700e3f56cefd88f05f05ec1b8fa39a3142963f5fcd2/textwrap3-0.9.2.zip"
    sha256 "5008eeebdb236f6303dcd68f18b856d355f6197511d952ba74bc75e40e0c3414"
  end

  resource "tzlocal" do
    url "https://files.pythonhosted.org/packages/ce/73/99e4cc30db6b21cba6c3b3b80cffc472cc5a0feaf79c290f01f1ac460710/tzlocal-2.1.tar.gz"
    sha256 "643c97c5294aedc737780a49d9df30889321cbe1204eac2c2ec6134035a92e44"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/38/f9/4fa6df2753ded1bcc1ce2fdd8046f78bd240ff7647f5c9bcf547c0df77e3/zipp-3.4.1.tar.gz"
    sha256 "3607921face881ba3e026887d8150cca609d517579abe052ac81fc5aeffdbd76"
  end

  resource "asn1crypto" do
    on_linux do
      url "https://files.pythonhosted.org/packages/9f/3d/8beae739ed8c1c8f00ceac0ab6b0e97299b42da869e24cf82851b27a9123/asn1crypto-1.3.0.tar.gz"
      sha256 "5a215cb8dc12f892244e3a113fe05397ee23c5c4ca7a69cd6e69811755efc42d"
    end
  end

  resource "jeepney" do
    on_linux do
      url "https://files.pythonhosted.org/packages/74/24/9b720cc6b2a73c908896a0ed64cb49780dcfbf4964e23a725aa6323f4452/jeepney-0.4.3.tar.gz"
      sha256 "3479b861cc2b6407de5188695fa1a8d57e5072d7059322469b62628869b8e36e"
    end
  end

  resource "secretstorage" do
    on_linux do
      url "https://files.pythonhosted.org/packages/fd/9f/36197c75d9a09b1ab63f56cb985af6cd858ca3fc41fd9cd890ce69bae5b9/SecretStorage-3.1.2.tar.gz"
      sha256 "15da8a989b65498e29be338b3b279965f1b8f09b9668bd8010da183024c8bff6"
    end
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    (testpath/"tests.sh").write <<~EOS
      #!/usr/bin/expect -f

      set timeout 3
      match_max 100000

      # Write the journal
      spawn "#{bin}/jrnl" "This is the fanciest test in the world."

      expect {
        "/.local/share/jrnl/journal.txt" { send -- "#{testpath}/test.txt\r" }
        timeout { exit 1 }
      }

      expect {
        "You can always change this later" { send -- "n\r" }
        timeout { exit 1 }
      }

      expect {
        eof { exit }
        timeout { exit 1 }
      }

      # Read the journal
      spawn "#{bin}/jrnl" -1

      expect {
        "This is the fanciest test in the world." { exit }
        timeout { exit 1 }
        eof { exit 1 }
      }

      # Encrypt the journal
      spawn "#{bin}/jrnl" --encrypt

      expect {
        -exact "Enter password for new journal: " { send -- "homebrew\r" }
        timeout { exit 1 }
      }

      expect {
        -exact "Enter password again: " { send -- "homebrew\r" }
        timeout { exit 1 }
      }

      expect {
        -exact "Do you want to store the password in your keychain? \[Y/n\] " { send -- "n\r" }
        timeout { exit 1 }
      }

      expect {
        -re "Journal encrypted to .*/test.txt." { exit }
        timeout { exit 1 }
        eof { exit 1 }
      }
    EOS

    system "expect", "./tests.sh"
    assert_predicate testpath/".config/jrnl/jrnl.yaml", :exist?
    assert_predicate testpath/"test.txt", :exist?
  end
end
