;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Teste HtDF|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image Image -> Boolean

;; produce true if the first image is larger(have a bigger width and a bigger height) than the second one, else produce false.


(check-expect (islarger=?
               (rectangle 3 3 "solid" "red")
               (rectangle 2 2 "solid" "white"))
               true)

(check-expect (islarger=?
               (rectangle 3 1 "solid" "red")
               (rectangle 2 2 "solid" "white"))
               false)

(check-expect (islarger=?
               (rectangle 3 2 "solid" "red")
               (rectangle 2 2 "solid" "white"))
               false)

(check-expect (islarger=?
               (rectangle 2 3 "solid" "red")
               (rectangle 3 2 "solid" "white"))
               false)

(check-expect (islarger=?
               (rectangle 2 1 "solid" "red")
               (rectangle 3 2 "solid" "white"))
               false)

(check-expect (islarger=?
               (rectangle 2 2 "solid" "red")
               (rectangle 3 2 "solid" "white"))
               false)

(check-expect (islarger=?
               (rectangle 2 3 "solid" "red")
               (rectangle 2 2 "solid" "white"))
               false)

(check-expect (islarger=?
               (rectangle 3 1 "solid" "red")
               (rectangle 3 2 "solid" "white"))
               false)

(check-expect (islarger=?
               (rectangle 3 2 "solid" "red")
               (rectangle 3 2 "solid" "white"))
               false)




;(define (islarger=? img1 img2) true)

;(define (islarger=? img1 img2)
;         (... img1 img2))

(define (islarger=? img1 img2)
         (and
          (> (image-width img1) (image-width img2))
          (> (image-height img1) (image-height img2))
          )) 