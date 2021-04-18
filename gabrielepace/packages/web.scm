(define-module (gabrielepace packages web)
  #:use-module (guix packages)
  #:use-module (guix build-system gnu)
  #:use-module (gnu packages lua)
  #:use-module (gnu packages tls)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:))

(define-public wrk
  (package
    (name "wrk")
    (version "4.1.0")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/wg/wrk")
                    (commit version)))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "0dblb3qdg8mbgb8iiks0g420pza13npbr33b2xkc5dgv7kcwmvqj"))))
    (build-system gnu-build-system)
    (arguments
     `(#:phases
       (modify-phases %standard-phases
         (delete 'configure))))
    (native-inputs
     `(("luajit" ,luajit)
       ("openssl" ,openssl)))
    (home-page "https://github.com/wg/wrk")
    (synopsis "Modern HTTP benchmarking tool")
    (description
     "wrk is a modern HTTP benchmarking tool capable of generating
significant load when run on a single multi-core CPU.  It combines a
multithreaded design with scalable event notification systems such as epoll and
kqueue.")
    (license license:asl2.0)))
