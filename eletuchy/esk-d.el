;;; esk-d.el --- Some helpful D code

(eval-after-load 'd-mode
  '(progn
     (setq d-use-encoding-map nil)
     (add-hook 'd-mode-hook 'inf-d-keys)
     (define-key d-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
     (define-key d-mode-map (kbd "C-M-h") 'backward-kill-word)
     ))

(global-set-key (kbd "C-h r") 'ri)

;; D files are .d and .di
(add-to-list 'auto-mode-alist '("\\.d$" . d-mode))
(add-to-list 'auto-mode-alist '("\\.di$" . d-mode))

;; Not strictly necessary, since D is based on C, but whatever works
(add-hook 'd-mode-hook 'esk-prog-mode-hook)

(provide 'esk-d)
;; esk-d.el ends here
