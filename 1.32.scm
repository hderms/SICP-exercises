(define (identity x) x)
(define (accumulator combiner term a next b)
  (if (> a b)
      1
      (combiner (term a) (accumulator combiner term (next a) next b))))
(define (accumulator-iter combiner term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (term a)))))
  (iter a 1))
