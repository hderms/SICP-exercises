(define (identity x) x)
(define (prod-rec term a next b)
  (if (> a b)
      1
      (* (term a) (prod-rec term (next a) next b))))
(define (prod-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))
