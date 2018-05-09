(cl:defpackage :img-test
  (:use :cl :trivial-gamekit)
  (:export :img-test :start))
(in-package :img-test)

(register-resource-package
 :keyword
 (asdf:system-relative-pathname :img-test "assets/"))

(define-image :sprite "sprite.png")
;; The following doesn't work!
;; (define-image :some-img "sprite.png")


(defgame img-test () ()
  (:viewport-width 800)
  (:viewport-height 600))

(defmethod draw ((this img-test))
  (draw-image (vec2 400 300) :sprite))
