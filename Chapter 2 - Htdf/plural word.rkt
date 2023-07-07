;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |plural word|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; String -> String
;; produce the given string with "s" added to the end

(check-expect (plural "apple") "apples")
(check-expect (plural "banana") "bananas")


;(define (plural n) "pluralword")

;(define (plural n) ; this is the template
;        (... n))


(define (plural n)
      (string-append n "s"))

