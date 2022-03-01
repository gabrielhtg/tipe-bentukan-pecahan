; -------------------------------------------------------------------------------------------------------
; NAMA    : GABRIEL CESAR HUTAGALUNG
; NIM     : 11S21010
; PRODI   : S1 INFORMATIKA
; -------------------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI SELECTOR

; Nama Fungsi                                                                         pemb(p)

; pemb:: fractions --> fractions
; pemb(p), untuk mengembalikan nilai pembilang (a) dari pecahan P

; Nama Fungsi                                                                         peny(p)
; peny:: fractions --> fractions
; peny(P), untuk mengembalikan nilai penyebut (b) dari pecahan P
; -------------------------------------------------------------------------------------------------------
; REALISASI SELECTOR
(defun pemb(p)
    (car p)
)

(defun peny(p)
    (car(cdr (cdr p)))
)
; -------------------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI KONSTRUKTOR

; Nama Fungsi                                                                         makep(a b)

; makep:: fractions --> fraction
; -------------------------------------------------------------------------------------------------------
; REALISASI KONSTRUKTOR

(defun makep(a b)
    (list a '/ b)
)
; -------------------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI OPERATOR

; Nama Fungsi                                                                           addp(p1 p2)

; addp:: fractions --> fractions
; addp(p), untuk menambahkan dua pecahan, (P 1 + P 2)

; Nama Fungsi                                                                           subp(p1 p2)

; subp:: fractions --> fractions
; subp(P), untuk menambahkan dua pecahan, (P 1 - P 2)

; Nama Fungsi                                                                           mulp(p1 p2)

; mulp:: fractions --> fractions
; mulp(P), untuk mengalikan dua pecahan, (P 1 * P 2)

; Nama Fungsi                                                                           divp(p1 p2)

; divp:: fractions --> fractions
; divp(P), untuk membagikan dua pecahan, (P 1 / P 2)

; -------------------------------------------------------------------------------------------------------
(defun addp(p1 p2)
    (list (+ (* (pemb p1) (peny p2)) (* (pemb p2) (peny p1))) '/ (* (peny p1) (peny p2)))
)

(defun subp(p1 p2)
    (list (- (* (pemb p1) (peny p2)) (* (pemb p2) (peny p1))) '/ (* (peny p1) (peny p2)))
)

(defun mulp(p1 p2)
    (list (* (pemb p1) (pemb p2)) '/ (* (peny p1) (peny p2)))
)

(defun divp(p1 p2)
    (list (* (pemb p1) (peny p2)) '/ (* (peny p1) (pemb p2)))
)

; -------------------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI KONSTRUKTOR

; Nama Fungsi                                                                         iseqp(p1 p2)

; iseqp:: fractions --> boolean
; untuk membandingkan, apakah kedua pecahan sama nilainya

; isltp:: fractions --> boolean
; untuk membandingkan, apakah P1 lebih kecil dari P2
; -------------------------------------------------------------------------------------------------------

(defun iseqp(p1 p2)
    (= (/ (pemb p1) (peny p1)) (/ (pemb p2) (peny p2)))
)

(defun isltp(p1 p2)
    (< (/ (pemb p1) (peny p1)) (/ (pemb p2) (peny p2)))
)
; -------------------------------------------------------------------------------------------------------
; APLIKASI

; --> (setq p1 (makep 2 3))
;       (2 3)
; --> (setq p2 (makep 4 7))
;       (4 7)
; --> (addp p1 p2)
;       (26 / 21)
; --> (subp p1 p2)
;       (-2 / 21)
; --> (mulp p1 p2)
;       (8 / 21)
; --> (divp p1 p2)
;       (12 / 14)