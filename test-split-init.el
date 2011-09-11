;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; split-init test suite 
;; TODO: port to ert.el
;;
;; Author    : Davide Angelocola <davide.angelocola@gmail.com>
;; Time-stamp: <2011-09-11 12:17:01 dfa>

(require 'split-init)
(require 'cl)
  
(defmacro assert-equal (expected got)
  `(assert (equal ,expected ,got)))
(defmacro assert-true (value) 
  `(assert ,value)) 
(defmacro assert-false (value)
  `(assert (not ,value)))

(defun test-filter ()
  (assert-equal '(0) (filter 'zerop '(0 1)))
  (assert-equal '(0) (filter 'zerop '(0))))

(defun test-init-file-p ()
  (assert-true (init-file-p "02-base.el"))
  (assert-true (init-file-p "/home/user/02-base.el"))
  (assert-false (init-file-p "02-.el"))
  (assert-false (init-file-p "foo.el")))

(defun run-tests()
  (test-filter)
  (test-init-file-p))


