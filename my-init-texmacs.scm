(tm-define (make-cd-fixed)
  (make-graphics)
  (delayed
    (:idle 1)
    (graphics-set-extents "8.1cm" "3.1cm")
    (graphics-set-text-at-halign "center")
    (graphics-set-text-at-valign "center")
    (graphics-set-arrow-end "<gtr>")
    (graphics-set-mode '(edit math-at))
    (graphics-set-notebook-grid)))

(delayed
  (lazy-initialize-force)
  (menu-bind insert-image-menu
    (former)
    (if (in-math?)
        ("Commutative diagram (fixed)" (make-cd-fixed)))))
