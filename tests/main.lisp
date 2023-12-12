(defpackage vladimir_ryazansev/tests/main
  (:use :cl
        :vladimir_ryazansev
        :rove))
(in-package :vladimir_ryazansev/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :vladimir_ryazansev)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
