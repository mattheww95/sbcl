(with-test (:name :symbol-name-coalescing)
  (dolist (testcase '("LAYOUTS" "CLASS1" "DST-OFFSET" "T" "NIL"))
    (let ((symbols (find-all-symbols testcase)))
      (assert (> (length symbols) 1))
      (assert (every (lambda (x) (eq x (symbol-name (car symbols))))
                     (mapcar 'symbol-name (cdr symbols)))))))