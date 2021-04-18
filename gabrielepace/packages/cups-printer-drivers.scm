(define-module (gabrielepace packages cups-printer-drivers))

(use-modules (guix packages)
             ((guix licenses) #:prefix license:)
             (guix build-system gnu)
             (guix download)
             (gnu packages ghostscript)
             (gnu packages compression)
             (gnu packages cups)
             (gnu packages perl)
             (gnu packages libusb)
             (gnu packages pkg-config))

(define-public gutenprint
  (package
    (name "gutenprint")
    (version "5.3.3")
    (source (origin
              (method url-fetch)
              (uri "https://downloads.sourceforge.net/project/gimp-print/gutenprint-5.3/5.3.3/gutenprint-5.3.3.tar.xz")
              (sha256
               (base32
                "0wm0akfm0dp0wrwnn03j90hqxs8vx8iy896baf68blb7isyfqybj"))))
    (build-system gnu-build-system)
    (native-inputs
     `(("pkg-config" ,pkg-config)))
    (arguments
     '(
       #:tests? #f))
    (inputs
     `(("ijs" ,ijs)
       ("zlib" ,zlib)
       ("cups" ,cups)
       ("perl" ,perl)
       ("libusb-compat" ,libusb-compat)))
    (description "Ghostscript and cups printer drivers")
    (synopsis "Ghostscript and cups printer drivers")
    (home-page "https://sourceforge.net/projects/gimp-print/")
    (license license:gpl2)))
