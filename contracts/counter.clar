
;; Mappings
(define-map counters principal uint)

;; Read-only Getter for Counters
(define-read-only (get-count (who principal))
  (default-to u0 (map-get? counters who))
)

;; Public Function to Count up
(define-public (count-up)
  (ok (map-set counters tx-sender (+ (get-count tx-sender) u1)))
)