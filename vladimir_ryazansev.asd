(asdf:defsystem "vladimir_ryazansev"
  :long-name "common-lisp-sample"
  :version "0.1.1"
  :author "Vladimir Ryazancev"
  :mailto "elf.forest@yandex.ru"
  :license "LLGPL"
  :depends-on ("clack"
               "cl-annot")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "Sample library"
  :long-description "Common Lisp sample library"
  :in-order-to ((test-op (test-op "vladimir_ryazansev/tests"))))

(asdf:defsystem "vladimir_ryazansev/tests"
  :author "Vladimir Ryazancev"
  :license "LLGPL"
  :depends-on ("vladimir_ryazansev"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for vladimir_ryazansev"
  :perform (asdf:test-op (op c) (symbol-call :rove :run c)))
