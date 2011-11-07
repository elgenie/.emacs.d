
(add-hook 'xml-mode-hook 'run-coding-hook)
(add-hook 'java-mode-hook 'run-coding-hook)

;; coding offsets
(setq c-basic-offset 2          ;; indents should be 2
      py-basic-offset 4         ;; except for python (PEP8 4Life)
      )

;; line numbers for programming modes
(defun turn-on-line-numbers ()
  (condition-case nil (linum-mode t)
    (error nil)) ; can't use ignore-errors directly for some reason
  )
(add-hook 'coding-hook 'turn-on-line-numbers)

(add-hook 'coding-hook 'yas/minor-mode)

(autoload 'js2-mode "js2-mode" nil t)
