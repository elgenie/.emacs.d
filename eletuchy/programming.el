
(add-hook 'xml-mode-hook 'esk-prog-mode-hook)
(add-hook 'java-mode-hook 'esk-prog-mode-hook)

;; coding offsets
(setq c-basic-offset 2  ;; indents should be 2
      py-basic-offset 4 ;; except for python (PEP8 4Life)
      )

;; line numbers for programming modes
(defun turn-on-line-numbers ()
  (condition-case nil (linum-mode t)
    (error nil)) ; can't use ignore-errors directly for some reason
  )
(add-hook 'esk-prog-mode-hook 'turn-on-line-numbers)

(add-hook 'esk-prog-mode-hook 'yas/minor-mode)

;; JavaScript2 mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-hook 'js2-mode-hook 'esk-prog-mode-hook)
